#!/bin/bash
service mysql start

# Creating a Database and User for WordPress
mysql -u root -e "CREATE DATABASE mariadb;"

mysql -u root -e "GRANT ALL ON mariadb.* TO 'barae'@'%' IDENTIFIED BY '1234';"

mysql -u root  -e "FLUSH PRIVILEGES;"

# service mysql stop    