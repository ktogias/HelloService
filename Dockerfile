FROM php:7.4-cli AS base
EXPOSE 80
RUN apt update && apt install zip libzip-dev -y && docker-php-ext-install zip && docker-php-ext-enable zip
WORKDIR /php
CMD ["php", "-S", "0.0.0.0:80", "src/hello.php"]

FROM base AS prod
COPY ./php /php
RUN php composer.phar install --no-dev --optimize-autoloader

FROM base AS dev
RUN pecl install xdebug && docker-php-ext-enable xdebug

FROM dev AS test
COPY ./php /php
RUN php composer.phar install --optimize-autoloader 