FROM python:3

RUN pip install --root-user-action=ignore --upgrade pip && \
    pip install --root-user-action=ignore --no-cache-dir requests uuid

FROM tangramor/nginx-php8-fpm

COPY --from=0 . .
