FROM wordpress:5.5.1-php7.2-apache

# Override apache user and group
ARG wwwdata_uid
ARG wwwdata_gid
RUN usermod -u $wwwdata_uid www-data
RUN groupmod -g $wwwdata_gid www-data

# Prevent wordpress auto installation
RUN rm /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT []
CMD ["apache2-foreground"]