FROM debian:buster

RUN apt-get update 

RUN apt-get install -y php7.3-fpm curl php7.3-mysql

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress/

RUN wp core download --allow-root

# RUN rm wp-config-sample.php

# WORKDIR /

COPY ./tools/script.sh .

RUN chmod +x script.sh

# RUN ./script.sh

# ENTRYPOINT [ "./script.sh" ]

# CMD ["php-fpm7.3", "-F", "-R"]

CMD [ "./script.sh" ]