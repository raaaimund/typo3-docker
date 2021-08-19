FROM php:7.3.8-fpm-alpine
RUN apk add --update --no-cache \
    freetype-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libzip-dev \
    zlib-dev \
    icu-dev \
    g++ \
    icu
RUN docker-php-ext-install -j$(nproc) mysqli pdo_mysql zip
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-configure intl && \
    docker-php-ext-install -j$(nproc) intl