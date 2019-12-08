FROM composer:latest
RUN apk add --no-cache freetype-dev libjpeg-turbo-dev libpng-dev mysql-client
RUN docker-php-ext-install mysqli gd
WORKDIR /site
CMD [ "composer", "install" ]