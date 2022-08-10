FROM alpine:3.16@sha256:bc41182d7ef5ffc53a40b044e725193bc10142a1243f395ee852a8d9730fc2ad

RUN \
    apk --no-cache upgrade && \
    apk add --no-cache openssl=~1.1

USER nobody:nobody
ENTRYPOINT ["/usr/bin/openssl"]
