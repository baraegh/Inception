FROM debian:buster

RUN apt-get update 

RUN apt-get install -y nginx

COPY ./tools/nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key

COPY ./tools/nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt

COPY ./conf/default /etc/nginx/sites-available/default

CMD [ "nginx" , "-g", "daemon off;"]
