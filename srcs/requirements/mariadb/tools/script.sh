
service mysql start

# Creating a Database and User for WordPress
mariadb -e "CREATE DATABASE mariadb DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"

mariadb -e "GRANT ALL ON mariadb.* TO 'barae'@'localhost' IDENTIFIED BY '1234';"

mariadb -e "FLUSH PRIVILEGES;"

# history -c