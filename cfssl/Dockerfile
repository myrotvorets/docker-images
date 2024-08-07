FROM alpine:edge@sha256:b93f4f6834d5c6849d859a4c07cc88f5a7d8ce5fb8d2e72940d8edd8be343c04
RUN \
    apk --no-cache upgrade && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --no-cache cfssl=~1 && \
    install -m 0700 -o nobody -g nogroup -d /srv/cfssl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
WORKDIR /srv/cfssl
EXPOSE 8888
USER nobody:nogroup
