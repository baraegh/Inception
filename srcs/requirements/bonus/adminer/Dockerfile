FROM debian:buster

RUN apt-get update && apt-get install -y curl php7.3 php7.3-mysql

WORKDIR /var/www/html/adminer

RUN curl -L https://www.adminer.org/latest.php -o index.php

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html/adminer"]