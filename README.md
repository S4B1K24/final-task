# Тестовое приложения для развертывания 

## Установка

Может осуществляться при помощи:
- [poetry](https://python-poetry.org)
- [pip](https://pip.pypa.io/en/stable/) + [virtualenv](https://virtualenv.pypa.io/en/latest/)


Если необхоодимо, обновите `pip`:
```shell
python -m pip install --upgrade pip
```

### Poetry

Если необходимо, установите `poetry`:
`pip install poetry`

Установите зависимости приложения:
```shell
poetry install
```

### Pip

Установите `virtualenv`:
```shell
pip install virtualenv
```

Создайте `virtualenv` и активируйте его:
```shell
virtualenv ve
source ve/bin/activate
```

Установите зависимости приложения:
```shell
pip install -r requirements.txt
```



## Локальный запуск

### Системные команды и тесты
```shell
python manage.py migrate
python manage.py collectstatic
python manage.py test
```

### Запуск development сервера:
```shell
python manage.py runserver
```

### Запуск gunicorn

```shell
gunicorn sampleproject.wsgi
```
### Сборка docker-образа с помощью Taskfile
```shell
task build
```

### Unit-тестирование docker-контейнера с помощью Taskfile
```shell
task test TAG=YOUR_TAG
```

### Запуск dev- и prod-сервера
```shell
task run-dev-server TAG=YOUR_TAG
task run-prod-server TAG=YOUR_TAG
```

### Запуск prod-сервера через docker-compose
```shell
task run-compose-prod
```

### Запуск миграций через docker-compose
```shell
task run-compose-migrate
```

## Переменные окружения
```shell
PORT=YOUR_EXPOSE_PORT

POSTGRES_DB=YOUR_POSTGRES_DB_NAME
POSTGRES_USER=YOUR_POSTGRES_DB_USER
POSTGRES_PASSWORD=YOUR_POSTGRES_DB_PASSWORD
POSTGRES_HOST=YOUR_POSTGRES_DB_HOST
POSTGRES_PORT=YOUR_POSTGRES_DB_PORT
```
