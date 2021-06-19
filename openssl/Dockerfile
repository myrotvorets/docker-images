FROM alpine:3.14

RUN \
    apk --no-cache upgrade && \
    apk add --no-cache openssl=~1

USER nobody:nobody
ENTRYPOINT ["/usr/bin/openssl"]
