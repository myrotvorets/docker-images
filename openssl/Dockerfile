FROM alpine:3.16@sha256:b95359c2505145f16c6aa384f9cc74eeff78eb36d308ca4fd902eeeb0a0b161b

RUN \
    apk --no-cache upgrade && \
    apk add --no-cache openssl=~1.1

USER nobody:nobody
ENTRYPOINT ["/usr/bin/openssl"]
