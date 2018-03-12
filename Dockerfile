FROM python:alpine

ENV RUNTIME_PACKAGES="gcc musl-dev"

RUN apk --update add $RUNTIME_PACKAGES

RUN mkdir /code
WORKDIR /code

COPY mysite /code/

# for Django
RUN pip3 install -r /code/requirements.txt
