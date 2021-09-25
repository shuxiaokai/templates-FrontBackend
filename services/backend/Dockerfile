FROM python:3.9-buster

RUN mkdir app
WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PATH="${PATH}:/root/.local/bin"
ENV PYTHONPATH=.

#COPY requirements.txt .
#RUN pip install --upgrade pip
#RUN pip install -r requirements.txt

COPY Pipfile .
COPY Pipfile.lock .
#RUN pipenv install --deploy
RUN pipenv install --system

COPY src/ .

