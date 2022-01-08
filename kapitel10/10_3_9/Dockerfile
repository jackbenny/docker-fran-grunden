FROM debian:11-slim
RUN apt-get update && apt-get install -y apache2 \
    curl \
    && apt-get clean
ADD --chown=www-data:www-data \
    http://jackbenny.se/docs/hej-docker.html \
    /var/www/html/index.html
EXPOSE 80/tcp
HEALTHCHECK --interval=30s --timeout=3s \
    --start-period=30s \
    CMD curl -f http://localhost || exit 1
CMD ["apache2ctl", "-D", "FOREGROUND"]
