FROM php:8.1-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install MySQL support
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set the working directory to Apache's document root
WORKDIR /var/www/html

# Copy project files into container
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Allow .htaccess and full access
RUN printf '<Directory /var/www/html/>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>\n' > /etc/apache2/conf-available/allow-access.conf \
    && a2enconf allow-access

EXPOSE 80
