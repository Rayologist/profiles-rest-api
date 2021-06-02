FROM python:3.7-alpine
LABEL author="rayologist1002@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

COPY ./app /app
WORKDIR /app

RUN adduser -D user
USER user
