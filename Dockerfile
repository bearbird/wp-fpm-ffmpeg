FROM wordpress:php7.4-fpm

RUN apt-get update; \
     apt-get install ffmpeg -y;

