FROM tangramor/nginx-php8-fpm:latest

RUN python3 -m ensurepip
RUN python3 -m pip install requests
RUN python3 -m pip install uuid
