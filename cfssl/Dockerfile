FROM alpine:edge@sha256:5bd9939b4140caa8c716499e53438053b4e1aa872a170f4399ec71c00e23b835
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
