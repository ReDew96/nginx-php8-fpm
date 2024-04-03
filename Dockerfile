FROM tangramor/nginx-php8-fpm:latest

RUN python -m pip install requests
RUN python -m pip install uuid
