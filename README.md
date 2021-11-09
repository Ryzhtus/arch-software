Первое домашнее задание по курсу Архитектура ПО
# Домашняя работа по курсу Архитектура ПО
**Автор:** Шкунков Арсений

# Запуск сервера
```console
./start.sh
```

# Методы GET
## Поиск по логину в БД

**Запрос** 
```http
http://192.168.26.128/person?login=morbi@nullaintincidunt.edu
```
**Вывод**
```json
{
    "age": 65,
    "first_name": "Kato",
    "last_name": "Ortiz",
    "login": "morbi@nullaintincidunt.edu"
}
```
## Поиск по маске в БД

**Запрос** 
```http
http://192.168.26.128/person?search&first_name=K&last_name=C
```

<details>
<summary>**Вывод**</summary>
```json
[
    {
        "age": 60,
        "first_name": "Keelie",
        "last_name": "Carver",
        "login": "mauris.ut.quam@orci.com"
    },
    {
        "age": 28,
        "first_name": "Kennedy",
        "last_name": "Carney",
        "login": "imperdiet.dictum@tellussuspendisse.org"
    },
    {
        "age": 35,
        "first_name": "Kirby",
        "last_name": "Crane",
        "login": "amet@lobortis.ca"
    },
    {
        "age": 64,
        "first_name": "Knox",
        "last_name": "Carver",
        "login": "ultrices.sit@urna.org"
    },
    {
        "age": 19,
        "first_name": "Kylan",
        "last_name": "Charles",
        "login": "proin@pharetranamac.org"
    }
]
```
</details>

<br>

# Метод POST
## Добавление пользователя в БД
**Запрос**
```python
import json
import requests

url = '192.168.26.128/persom'
data = {'login': 'Ryzhtis',
        'first_name': 'Arsenii',
        'last_name': 'Shkunkov',
        'age': 23}

r = requests.post(url, data=json.dumps(payload))
```

**Вывод**
```json
{
    "result": true
}
```

**Проверка наличия логина в БД**
```sql
mysql> select * from Person where login='Ryzhtus';
```
**Вывод**
```
+---------+------------+-----------+-----+
| login   | first_name | last_name | age |
+---------+------------+-----------+-----+
| Ryzhtus | Arsenii    | Shkunkov  |  23 |
+---------+------------+-----------+-----+
```

# Попытка обращения к БД
**Запрос**
```http
192.168.26.128/person?
```

**Вывод**
```
Invalid request.
```