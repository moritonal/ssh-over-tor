FROM alpine:latest

RUN apk add --no-cache --update tor netcat-openbsd torsocks openssh-client putty

COPY ./torrc /etc/tor/torrc

WORKDIR /home

COPY ./start.sh ./start.sh
RUN chmod +x ./start.sh

ENTRYPOINT [ "sh", "/home/start.sh" ]