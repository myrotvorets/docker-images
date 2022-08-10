FROM alpine:edge@sha256:69361f5f421bb47db6f2f6baf84ab50b8f7c9b209f8376048dda955535224be8
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
