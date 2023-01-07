FROM debian:buster

RUN apt-get update && apt-get install -y vsftpd 

RUN mkdir -p /var/run/vsftpd/empty \
    && mkdir -p /var/www/html/wordpress \
    && mkdir var/log/vsftpd/ \
    && touch var/log/vsftpd/vsftpd.log \
    && mv /etc/vsftpd.conf /etc/vsftpd.backup \
    && touch /etc/vsftpd.users_list

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

COPY ./tools/script.sh .

ENTRYPOINT ["sh", "script.sh" ]

CMD [ "vsftpd",  "/etc/vsftpd.conf"]
