FROM debian:11-slim
RUN apt-get update && apt-get install -y apache2 \
    && apt-get clean
ADD --chown=www-data:www-data \
    http://jackbenny.se/docs/hej-docker.html \
    /var/www/html/index.html
EXPOSE 80/tcp
CMD ["apache2ctl", "-D", "FOREGROUND"]
