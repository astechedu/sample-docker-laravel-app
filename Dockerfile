 FROM php:8.1-apache

  RUN apt update && apt install -y \
      git \
      curl \
      zip \
      unzip

 # RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer 
   

  WORKDIR /var/www/html
  COPY laravel9x ./laravel9x
  RUN chown -R www-data:www-data /var/www
