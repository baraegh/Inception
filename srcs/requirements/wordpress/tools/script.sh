#!/bin/bash
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
wp core config --dbhost='mariadb' --dbname='mariadb' --dbuser='barae' --dbpass='1234' --allow-root --skip-check
wp core install --url=https://localhost --title=test --admin_user=barae --admin_password=1234 --admin_email=test@mail.com --allow-root
service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F -R