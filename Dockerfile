FROM python:3.12-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN apt-get update -y
RUN apt-get install -y git

RUN pip install --upgrade pip
RUN git clone --branch 0.4.0 https://github.com/susrik/fitness.git
RUN pip install -r /app/fitness/requirements.txt
