# Use an official PHP runtime as a parent image
FROM php:8.2-alpine

# Set the working directory in the container
WORKDIR /var/www/html

# Copy your PHP application code into the container
COPY ../app .

RUN apt-get update && \
    docker-php-ext-install pdo pdo_pgsql php-pgsql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 80