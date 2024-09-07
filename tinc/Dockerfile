FROM alpine:3.20@sha256:beefdbd8a1da6d2915566fde36db9db0b524eb737fc57cd1367effd16dc0d06d
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
