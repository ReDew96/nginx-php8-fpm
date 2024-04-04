FROM tangramor/nginx-php8-fpm

FROM python:3

RUN pip install --upgrade pip && \
    pip install requests && \
    pip install uuid
