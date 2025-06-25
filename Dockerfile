FROM php:8.4.4-fpm

RUN apt-get \
update \
&& apt-get install -y \
libpng-dev \
pkg-config \
libfreetype6-dev \
libjpeg62-turbo-dev \
default-mysql-client \
libcurl4-openssl-dev \
&& docker-php-ext-install pdo_mysql curl gd \
&& su -c "docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg" \
&& su -c "docker-php-ext-install gd" \
&& chown -R www-data:www-data /var/www/html