FROM php:7.3.8-fpm-alpine
USER root
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
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd
RUN docker-php-ext-configure intl && \
    docker-php-ext-install -j$(nproc) intl
USER www-data
ENV TYPO3_CONTEXT Development