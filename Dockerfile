# Use the official PHP image as the base image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install Composer and dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer install --no-plugins --no-scripts --no-interaction

# Expose port 81 for Apache
EXPOSE 80

# Start Apache in the foreground when the container starts
CMD ["apache2-foreground"]