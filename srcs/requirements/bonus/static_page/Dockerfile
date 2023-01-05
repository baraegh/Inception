FROM debian:buster

RUN apt-get update && apt-get install -y php7.3

COPY ./tools/* /var/www/html/

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]