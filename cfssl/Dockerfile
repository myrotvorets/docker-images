FROM alpine:edge@sha256:e31c3b1cd47718260e1b6163af0a05b3c428dc01fa410baf72ca8b8076e22e72
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
