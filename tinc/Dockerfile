FROM alpine:3.20@sha256:b89d9c93e9ed3597455c90a0b88a8bbb5cb7188438f70953fede212a0c4394e0
ARG vpn_network=vpn

RUN \
    apk --no-cache upgrade && \
    apk add --no-cache tinc-pre=~1.1

COPY ./entrypoint.sh /entrypoint.sh

ENV NETWORK_NAME=$vpn_network

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT ["/entrypoint.sh"]
CMD ["start", "-D", "--logfile", "/dev/fd/2"]
