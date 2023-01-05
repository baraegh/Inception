#!/bin/sh

useradd ${FTP_USER}
echo "${FTP_USER}:${FTP_PASS}" | chpasswd
usermod -d /var/www/html/wordpress ${FTP_USER}
echo "${FTP_USER}" >> /etc/vsftpd.users_list

exec "$@"