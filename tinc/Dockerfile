FROM alpine:3.18@sha256:02bb6f428431fbc2809c5d1b41eab5a68350194fb508869a33cb1af4444c9b11
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
