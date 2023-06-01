#!/bin/sh

if [ -f .venv ]; then
    source .venv
fi

if [ $1 = "gunicorn" ]; then
    poetry run gunicorn -b 0.0.0.0:8000 sampleproject.wsgi
else
    poetry run python manage.py $@
fi
