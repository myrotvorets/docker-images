FROM alpine:edge
RUN \
    apk --no-cache -U upgrade && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --no-cache cfssl && \
    install -m 0700 -o nobody -g nogroup -d /srv/cfssl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
WORKDIR /srv/cfssl
EXPOSE 8888
USER nobody:nogroup
