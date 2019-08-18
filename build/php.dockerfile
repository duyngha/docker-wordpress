FROM php:7.2-fpm

RUN apt-get update \
    && docker-php-ext-install pdo pdo_mysql mysqli