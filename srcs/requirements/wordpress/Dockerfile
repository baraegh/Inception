FROM debian:buster

RUN apt-get update 

RUN apt-get install -y php7.3-fpm curl php7.3-mysql

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress/

RUN chmod 777 /var/www/html/wordpress/

RUN chown -R www-data:1000 /var/www/html/wordpress

RUN wp core download --allow-root

ARG DB_NAME DB_USER DB_PASS

RUN wp core config --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_NAME --path='/var/www/html/wordpress' --allow-root --skip-check

COPY ./tools/script.sh .

RUN chmod +x script.sh

ENTRYPOINT [ "./script.sh" ]

CMD [ "php-fpm7.3", "-F", "-R" ]
