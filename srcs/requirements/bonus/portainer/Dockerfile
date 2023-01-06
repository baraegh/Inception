FROM debian:buster

RUN apt-get update && apt-get install -y curl

WORKDIR /etc

RUN curl -L https://github.com/portainer/portainer/releases/download/2.15.1/portainer-2.15.1-linux-amd64.tar.gz -o portainer

RUN tar xf portainer-2.15.1-linux-amd64.tar.gz \
    && rm portainer-2.15.1-linux-amd64.tar.gz \
    && mkdir -p /data /var/run

WORKDIR /etc/portainer

# COPY ./tools/script.sh .

# RUN chmod +x script.sh

# ENTRYPOINT [ "./script.sh" ]

CMD ["./portainer"]
# CMD ["tail", "-f"]