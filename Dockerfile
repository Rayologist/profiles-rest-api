FROM python:3.7-alpine
LABEL author="rayologist1002@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirement.txt /requirement.txt
RUN pip install -r requirement.txt

COPY ./app /app
WORKDIR /app

RUN adduser -D user
USER user
