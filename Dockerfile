FROM tangramor/nginx-php8-fpm:latest

RUN apt-get -y install python3-pip
    python -m pip install requests
    python -m pip install uuid
