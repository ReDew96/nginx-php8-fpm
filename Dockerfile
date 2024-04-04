FROM node:21.6.2-alpine3.19 AS nodejs

FROM tangramor/nginx-php8-fpm:php8.3.3_withoutNodejs

FROM python:3

RUN pip install --upgrade pip && \
    pip install requests && \
    pip install uuid

LABEL org.opencontainers.image.authors="Wang Junhua(tangramor@gmail.com)"
LABEL org.opencontainers.image.url="https://www.github.com/tangramor/nginx-php8-fpm"

# China alpine mirror: mirrors.ustc.edu.cn
ARG APKMIRROR=dl-cdn.alpinelinux.org

USER root

WORKDIR /var/www/html

# China npm mirror: https://registry.npmmirror.com
ENV NPMMIRROR=""

COPY --from=nodejs /opt /opt
COPY --from=nodejs /usr/local /usr/local
COPY conf/supervisord.conf /etc/supervisord.conf
COPY conf/php-fpm.conf /etc/supervisor/conf.d/php-fpm.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf

COPY start.sh /start.sh

EXPOSE 443 80

CMD ["/start.sh"]
