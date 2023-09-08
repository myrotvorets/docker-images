FROM alpine:3.18@sha256:7144f7bab3d4c2648d7e59409f15ec52a18006a128c733fcff20d3a4a54ba44a
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
