FROM tangramor/nginx-php8-fpm:latest

RUN python3 get-pip.py
RUN python3 -m pip install requests
RUN python3 -m pip install uuid
