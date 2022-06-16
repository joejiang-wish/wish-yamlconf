FROM python:3.9-slim-bullseye

WORKDIR /root/app
ENV PYTHONPATH=/root/app
COPY requirements.txt /root/app/requirements.txt
COPY src /root/app/src
COPY test /root/app/test
RUN pip install -r requirements.txt