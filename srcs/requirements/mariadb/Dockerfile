FROM debian:buster

RUN apt-get update && apt-get install -y mariadb.server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh /

RUN chmod +x script.sh

ARG DB_NAME DB_USER DB_PASS DB_ROOT_PASS

RUN ./script.sh

CMD ["mysqld"]