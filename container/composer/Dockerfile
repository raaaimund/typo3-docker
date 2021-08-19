FROM composer:1.10.1
RUN apk add --no-cache freetype-dev libjpeg-turbo-dev libpng-dev mysql-client
RUN docker-php-ext-install mysqli gd
USER www-data
WORKDIR /site
COPY --chown=www-data composer.json .
CMD [ "composer", "install" ]