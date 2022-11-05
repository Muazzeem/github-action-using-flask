# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy Flask application code
COPY app.py  app.py
COPY start.sh /start.sh
COPY nginx_config.conf /etc/nginx/conf.d/virtual.conf

EXPOSE 80


RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]


