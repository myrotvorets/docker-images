ARG vpn_network=vpn
FROM alpine:3.13

RUN apk add --no-cache tinc-pre
COPY ./entrypoint.sh /entrypoint.sh

ENV NETWORK_NAME $vpn_network

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT ["/entrypoint.sh"]
CMD ["start", "-D", "--logfile", "/dev/fd/2", "-n", $vpn_network]
