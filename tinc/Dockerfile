FROM alpine:3.15@sha256:21a3deaa0d32a8057914f36584b5288d2e5ecc984380bc0118285c70fa8c9300
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
