FROM alpine:3.13

RUN \
    apk --no-cache -U upgrade && \
    apk add --no-cache openssl

USER nobody:nobody
ENTRYPOINT ["/usr/bin/openssl"]
