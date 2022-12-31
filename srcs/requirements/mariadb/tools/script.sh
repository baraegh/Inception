#!/bin/bash
service mysql start

# Creating a Database and User for WordPress
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS'"

mysql -u root -e "GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%';"

mysql -u root -e "FLUSH PRIVILEGES;"

# set password for the root user

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASS';"