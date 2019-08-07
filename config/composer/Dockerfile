FROM composer:latest AS build
WORKDIR /src
RUN composer create-project typo3/cms-base-distribution site
WORKDIR /src/site
RUN composer require helhum/typo3-console typo3-ter/introduction:4.0.1

FROM php:7.3.8-fpm-alpine
USER root
RUN docker-php-ext-install mysqli
WORKDIR /site
COPY --from=build --chown=82:82 /src/site .
COPY entrypoint.sh .
RUN chmod +x vendor/bin/typo3cms && \
    chmod +x entrypoint.sh
CMD [ "./entrypoint.sh" ]