FROM python:3.9-alpine

RUN python -m pip install --upgrade pip
RUN pip install poetry

RUN apk add -U --no-cache \
    postgresql-dev \
    gcc \
    python3-dev \
    musl-dev
    
WORKDIR /opt/app

COPY . .


COPY pyproject.toml pyproject.toml
COPY poetry.lock poetry.lock
COPY poetry.toml poetry.toml

EXPOSE 8000

COPY entrypoint.sh entrypoint.sh
RUN ["chmod", "+x", "./entrypoint.sh"]

COPY sampleapp sampleapp
COPY sampleproject sampleproject
COPY manage.py manage.py

ENTRYPOINT ["sh", "./entrypoint.sh"]

