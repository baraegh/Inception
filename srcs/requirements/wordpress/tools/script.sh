#!/bin/sh
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
if ! wp core is-installed --allow-root; then
    wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root
    wp user create ${WP_USER} ${WP_USER_EMAIL} --role=${WP_USER_ROLE} --display_name=${WP_USER} --user_pass=${WP_USER_PASS} --allow-root
    # wp config set WP_REDIS_TIMEOUT 1 --type=constant --allow-root
    # wp config set WP_REDIS_READ_TIMEOUT 1 --type=constant --allow-root
    # wp config set WP_REDIS_DATABASE 0 --type=constant --allow-root
    # wp config set WP_CACHE_KEY_SALT eel-ghan --type=constant --allow-root
    # wp config setFS_METHOD direct --type=constant --allow-root
fi


if ! wp plugin is-installed redis-cache --allow-root; then
    wp plugin install redis-cache --allow-root
fi

if ! wp plugin is-active redis-cache --allow-root; then
    wp plugin activate redis-cache --allow-root
fi

wp config set WP_REDIS_HOST redis --type=constant --allow-root
wp config set WP_REDIS_PORT 6379 --type=constant --allow-root

wp redis enable --allow-root

chown -R www-data:1000 /var/www/html/wordpress/*

service php7.3-fpm start
service php7.3-fpm stop
echo "Wordpress started on port :9000"
exec "$@"