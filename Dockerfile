FROM python:3.9-slim-bullseye

WORKDIR /root/app
ENV PYTHONPATH=/root/app
COPY setup.py /root/app/setup.py
COPY src /root/app/src
COPY test /root/app/test
RUN pip install -e ".[dev]"