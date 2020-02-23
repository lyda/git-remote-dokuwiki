FROM php:7.3-apache

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
RUN apt-get update \
  && apt-get dist-upgrade -y \
  && apt-get install -y vim-nox \
  && rm /etc/apache2/sites-enabled/000-default.conf \
  && apt-get clean \
  && a2enmod rewrite \
  && cd /var/www \
  && curl -s -o dokuwiki-stable.tgz \
     https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz \
  && tar xf dokuwiki-stable.tgz \
  && rm dokuwiki-stable.tgz \
  && mv dokuwiki-*/ dokuwiki \
  && chown -R www-data:www-data /var/www/dokuwiki \
  && rm /var/log/apache2/*.log
COPY apache-site.conf /etc/apache2/sites-enabled/000-default.conf
