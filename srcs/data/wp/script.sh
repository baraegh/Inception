
# configure wordpress usinf WP-CLI
wp core config --dbhost=mariadb --dbname=mariadb --dbuser=barae --dbpass=1234 --allow-root --skip-check

wp core install --url=test.com --title="test" --admin_name=barae --admin_password=1234 --admin_email=test@mail.com --allow-root --skip-check

# To delete history
# history -c