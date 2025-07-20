FROM alpine:3.22@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de311d1

RUN apk add --no-cache openssl=~3

USER nobody:nobody
ENTRYPOINT ["/usr/bin/openssl"]
