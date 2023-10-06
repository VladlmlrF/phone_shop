FROM python:3.12-alpine3.18

COPY requirements.txt /temp/requirements.txt
COPY phone_shop /phone_shop
WORKDIR /phone_shop
EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password phone-user

USER phone-user