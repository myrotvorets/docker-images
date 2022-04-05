FROM alpine:3.15@sha256:4edbd2beb5f78b1014028f4fbb99f3237d9561100b6881aabbf5acce2c4f9454

RUN \
    apk --no-cache upgrade && \
    apk add --no-cache openssl=~1.1

USER nobody:nobody
ENTRYPOINT ["/usr/bin/openssl"]
