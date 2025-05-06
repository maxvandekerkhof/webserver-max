FROM ubuntu:22.04

RUN apt update && apt install -y apache2
COPY html/index.html /var/www/html/index.html
COPY ./style.css /var/www/html/style.css
COPY ./script.js /var/www/html/script.js
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
