FROM php:8.2-apache

# Install mysqli
RUN docker-php-ext-install mysqli

# Copy backend (admin)
COPY ../admin /var/www/html/

# Permission (optional)
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
