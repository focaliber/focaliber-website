FROM gjansen/wordpress-dependencies:php8.1-apache

COPY --chown=www-data:www-data --chmod=0500 vendor/ /var/www/vendor/
COPY --chown=www-data:www-data --chmod=0500 config/ /var/www/config/
COPY --chown=www-data:www-data --chmod=0500 public_html/ /var/www/html/

RUN set -eux; \
    mkdir /var/www/html/upload; \
    chown www-data:www-data /var/www/html/upload; \
    chmod 0700 /var/www/html/upload;

VOLUME /var/www/html/upload