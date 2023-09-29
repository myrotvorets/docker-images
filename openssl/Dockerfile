FROM alpine:3.18@sha256:eece025e432126ce23f223450a0326fbebde39cdf496a85d8c016293fc851978

RUN apk add --no-cache openssl=~3

USER nobody:nobody
ENTRYPOINT ["/usr/bin/openssl"]
