FROM python:alpine

RUN mkdir /code
WORKDIR /code

COPY mysite /code/

# for Django
RUN pip3 install -r /code/requirements.txt
