FROM ubuntu:22.04

RUN apt update && apt install -y apache2
COPY html/index.html /var/www/html/index.html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
