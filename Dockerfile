FROM tangramor/nginx-php8-fpm:latest

RUN python get-pip.py
RUN python -m pip install requests
RUN python -m pip install uuid
