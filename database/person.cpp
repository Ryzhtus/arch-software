#include "person.h"
#include "database.h"
#include "../config/config.h"

#include <Poco/Data/MySQL/Connector.h>
#include <Poco/Data/MySQL/MySQLException.h>
#include <Poco/Data/SessionFactory.h>
#include <Poco/Data/RecordSet.h>
#include <Poco/JSON/Parser.h>
#include <Poco/Dynamic/Var.h>

#include <sstream>
#include <exception>
#include <fstream>

using namespace Poco::Data::Keywords;
using Poco::Data::Session;
using Poco::Data::Statement;

namespace database {

    void Person::init() {
        try {

            Poco::Data::Session session = database::Database::get().create_session();
            //*
            Statement drop_stmt(session);
            drop_stmt << "DROP TABLE IF EXISTS Person", now;
            //*/

            // (re)create table
            Statement create_stmt(session);
            create_stmt << "CREATE TABLE IF NOT EXISTS `Person` ("
                        << "`login` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,"
                        << "`first_name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,"
                        << "`last_name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,"
                        << "`age` INT NOT NULL,"
                        << "PRIMARY KEY (`login`), KEY `fn` (`first_name`),KEY `ln` (`last_name`));",
                now;

            std::cout << "Table is created" << std::endl;

            Poco::Data::Statement truncate_stmt(session);
            truncate_stmt << "TRUNCATE TABLE `Person`;";
            truncate_stmt.execute();

            std::string json;
            std::ifstream is("data.json");
            std::istream_iterator<char> eos;
            std::istream_iterator<char> iit(is);
            while (iit != eos)
                json.push_back(*(iit++));
            is.close();
            

            std::cout << "Loading data from JSON" << std::endl;

            Poco::JSON::Parser parser;
            Poco::Dynamic::Var result = parser.parse(json);
            Poco::JSON::Array::Ptr arr = result.extract<Poco::JSON::Array::Ptr>();

            std::cout << "Parsing data from JSON" << std::endl;

            size_t i{0};
            for (i = 0; i < arr->size(); ++i)
            {
                Poco::JSON::Object::Ptr object = arr->getObject(i);
                std::string login = object->getValue<std::string>("login");
                std::string first_name = object->getValue<std::string>("first_name");
                std::string last_name = object->getValue<std::string>("last_name");
                int age = object->getValue<int>("age");
                Poco::Data::Statement insert(session);
                insert << "INSERT INTO Person (login,first_name,last_name,age) VALUES(?, ?, ?, ?)",
                    use(login),
                    use(first_name),
                    use(last_name),
                    use(age);

                insert.execute();
                
                if (i % 1000 == 0)
                {
                    std::cout << "Inserted " << i << " records" << std::endl;
                }
            }

            std::cout << "Inserted " << i << " records" << std::endl; 
        
        }

        catch (Poco::Data::MySQL::ConnectionException &e) {
            std::cout << "connection:" << e.what() << std::endl;
            throw;
        }
        catch (Poco::Data::MySQL::StatementException &e) {

            std::cout << "statement:" << e.what() << std::endl;
            throw;
        }
    }

    Poco::JSON::Object::Ptr Person::toJSON() const {
        Poco::JSON::Object::Ptr root = new Poco::JSON::Object();

        root->set("login", _login);
        root->set("first_name", _first_name);
        root->set("last_name", _last_name);
        root->set("age", _age);

        return root;
    }

    Person Person::fromJSON(const std::string &str) {
        Person person;
        Poco::JSON::Parser parser;
        Poco::Dynamic::Var result = parser.parse(str);
        Poco::JSON::Object::Ptr object = result.extract<Poco::JSON::Object::Ptr>();

        person.login() = object->getValue<std::string>("login");
        person.first_name() = object->getValue<std::string>("first_name");
        person.last_name() = object->getValue<std::string>("last_name");
        person.age() = object->getValue<int>("age");

        return person;
    }

    Person Person::read_by_login(std::string login) {
        try {
            Poco::Data::Session session = database::Database::get().create_session();
            Poco::Data::Statement select(session);
            Person person;
            select << "SELECT login, first_name, last_name, age FROM Person where login=?",
                into(person._login),
                into(person._first_name),
                into(person._last_name),
                into(person._age),
                use(login),
                range(0, 1); //  iterate over result set one row at a time

            select.execute();
            Poco::Data::RecordSet rs(select);
            if (!rs.moveFirst()) throw std::logic_error("not found");

            return person;
        }

        catch (Poco::Data::MySQL::ConnectionException &e) {
            std::cout << "connection:" << e.what() << std::endl;
            throw;
        }
        catch (Poco::Data::MySQL::StatementException &e) {

            std::cout << "statement:" << e.what() << std::endl;
            throw;
        }
    }

    std::vector<Person> Person::read_all() {
        try {
            Poco::Data::Session session = database::Database::get().create_session();
            Statement select(session);
            std::vector<Person> result;
            Person person;
            select << "SELECT login, first_name, last_name, age FROM Person",
                into(person._login),
                into(person._first_name),
                into(person._last_name),
                into(person._age),
                range(0, 1); //  iterate over result set one row at a time

            while (!select.done()) {
                select.execute();
                result.push_back(person);
            }
            return result;
        }

        catch (Poco::Data::MySQL::ConnectionException &e) {
            std::cout << "connection:" << e.what() << std::endl;
            throw;
        }
        catch (Poco::Data::MySQL::StatementException &e) {

            std::cout << "statement:" << e.what() << std::endl;
            throw;
        }
    }

    std::vector<Person> Person::search(std::string first_name, std::string last_name) {
        try {
            Poco::Data::Session session = database::Database::get().create_session();
            Statement select(session);
            std::vector<Person> result;
            Person person;
            first_name+="%";
            last_name+="%";
            select << "SELECT login, first_name, last_name, age FROM Person where first_name LIKE ? and last_name LIKE ?",\
                into(person._login),
                into(person._first_name),
                into(person._last_name),
                into(person._age),
                use(first_name),
                use(last_name),
                range(0, 1); //  iterate over result set one row at a time

            while (!select.done()) {
                select.execute();
                result.push_back(person);
            }
            return result;
        }

        catch (Poco::Data::MySQL::ConnectionException &e) {
            std::cout << "connection:" << e.what() << std::endl;
            throw;
        }
        catch (Poco::Data::MySQL::StatementException &e) {

            std::cout << "statement:" << e.what() << std::endl;
            throw;
        }
    }

   
    void Person::save_to_mysql() {

        try
        {
            Poco::Data::Session session = database::Database::get().create_session();
            Poco::Data::Statement insert(session);

            insert << "INSERT INTO Person (login,first_name,last_name,age) VALUES(?, ?, ?, ?)",
                use(_login),
                use(_first_name),
                use(_last_name),
                use(_age);

            insert.execute();
            
        }
        catch (Poco::Data::MySQL::ConnectionException &e) {
            std::cout << "connection:" << e.what() << std::endl;
            throw;
        }
        catch (Poco::Data::MySQL::StatementException &e) {

            std::cout << "statement:" << e.what() << std::endl;
            throw;
        }
    }

    std::string Person::get_login() const {
        return _login;
    }

    const std::string &Person::get_first_name() const {
        return _first_name;
    }

    const std::string &Person::get_last_name() const {
        return _last_name;
    }

    const int &Person::get_age() const {
        return _age;
    }

    std::string &Person::login() {
        return _login;
    } 

    std::string &Person::first_name() {
        return _first_name;
    }

    std::string &Person::last_name() {
        return _last_name;
    }

    int &Person::age() {
        return _age;
    }
}