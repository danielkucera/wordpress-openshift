FROM wordpress:latest
RUN sed -i 's/<VirtualHost\ \*:80>/<VirtualHost *:8080>/' /etc/apache2/sites-enabled/000-default.conf
RUN echo "Listen 8080" > /etc/apache2/ports.conf
RUN chmod 777 /var/run/apache2
RUN chmod 777 /var/lock/apache2
EXPOSE 8080
USER 1000
