FROM debian:buster

RUN apt-get update 

RUN apt-get install -y php7.3-fpm curl php7.3-mysql

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress/

#RUN wp core download --allow-root

# RUN rm wp-config-sample.php

# WORKDIR /
#RUN wp core config --dbname='mariadb' --dbuser='barae' --dbpass='1234' --dbhost='mariadb' --path='/var/www/html/wordpress' --allow-root --skip-check
COPY ./tools/script.sh .

RUN chmod 777 script.sh

RUN chown -R www-data:www-data /var/www/html/wordpress

# RUN ./script.sh

# ENTRYPOINT [ "./script.sh" ]

# CMD ["php-fpm7.3", "-F", "-R"]

CMD [ "tail", "-f" ]