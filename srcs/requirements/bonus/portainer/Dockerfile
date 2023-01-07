FROM debian:buster

RUN apt-get update && apt-get install -y wget

WORKDIR /etc

RUN wget https://github.com/portainer/portainer/releases/download/2.15.1/portainer-2.15.1-linux-amd64.tar.gz \
    && tar xf portainer-2.15.1-linux-amd64.tar.gz \
    && rm portainer-2.15.1-linux-amd64.tar.gz \
    && mkdir -p /data /var/run

WORKDIR /etc/portainer

CMD [ "./portainer"]