FROM wordpress:latest

LABEL image.name="wpserver:latest"

# Install useful tools
RUN apt-get update && apt-get install -y \
    nano \
    wget \
    curl \
    git

# Descargar y descomprimir Wordpress
RUN curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz \
    && tar -xzf /tmp/wordpress.tar.gz -C /var/www/ \
    && rm /tmp/wordpress.tar.gz \
    && chown -R www-data:www-data /var/www/wordpress


# COPY php.ini /usr/local/etc/php/
