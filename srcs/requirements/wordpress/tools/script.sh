#!/bin/sh
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
if [ ! -e "/var/www/html/wordpress/flag" ]; then
    wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root
    wp user create ${WP_USER} ${WP_USER_EMAIL} --role=author --display_name=${WP_USER} --user_pass=${WP_USER_PASS} --allow-root
    touch /var/www/html/wordpress/flag
fi

service php7.3-fpm start
service php7.3-fpm stop
echo "Wordpress started on port :9000"
exec "$@"