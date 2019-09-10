FROM php:7.2-fpm

RUN apt-get update \
    && docker-php-ext-install pdo pdo_mysql mysqli

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp