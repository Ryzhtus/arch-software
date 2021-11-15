Второе домашнее задание по курсу Архитектура ПО
# Домашняя работа по курсу Архитектура ПО
**Автор:** Шкунков Арсений

# Запуск
### Запускаем Docker
```console
cd docker
docker-compose up -d
```
### Запускаем сервер
```console
./start.sh
```

# Методы GET
## Поиск по логину в БД с кэшем

**Запрос** 
```
http://192.168.26.128/person?login=morbi@nullaintincidunt.edu&no_cache=1
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
**В консоли**
```
Item from cache:morbi@nullaintincidunt.edu
```

# Метод POST
## Добавление пользователя в БД
**Запрос**
```python
import json
import requests

url = '192.168.26.128/person'
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

**Проверка наличия логина в БД с помощью кэша**
```
192.168.26.128/person?login=Ryzhtus&no_cache=1
```
**Вывод**
```json
{
    "age": 23,
    "first_name": "Arsenii",
    "last_name": "Shkunkov",
    "login": "Ryzhtus"
}
```
**В консоли**
```
Item from cache:Ryzhtus
```