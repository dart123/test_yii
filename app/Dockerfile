# Use an official PHP runtime as a parent image
FROM php:fpm-alpine

# Set the working directory in the container
WORKDIR /var/www/test_yii/app

# Copy your PHP application code into the container
COPY ./app .

RUN apk add --update && \
    set -ex \
      && apk --no-cache add \
        postgresql-dev
RUN docker-php-ext-install pdo pdo_pgsql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 80
