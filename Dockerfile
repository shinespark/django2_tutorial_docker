FROM python:alpine

ENV RUNTIME_PACKAGES="gcc g++ musl-dev nodejs libxml2-dev libxslt-dev"

RUN apk --update add $RUNTIME_PACKAGES

RUN mkdir /code
WORKDIR /code

COPY mysite /code/

# for Django
RUN pip install --upgrade pip
RUN pip install -r /code/requirements.txt

# for Bootstrap
RUN npm install --verbose
