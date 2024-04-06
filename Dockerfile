FROM lscr.io/linuxserver/nginx

FROM python:3

RUN pip install --upgrade pip && \
    pip install requests uuid
