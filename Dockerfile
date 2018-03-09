FROM python:alpine

RUN mkdir /code
WORKDIR /code

COPY dj /code/

# for Django
RUN pip3 install -r /code/requirements.txt
