FROM php:7.4-fpm

RUN apt-get update \
    && docker-php-ext-install pdo pdo_mysql mysqli

RUN chown -R www-data:"$USER" /var/www/html
RUN chmod -R 0755 /var/www/html

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp