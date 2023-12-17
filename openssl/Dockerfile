FROM alpine:3.19@sha256:51b67269f354137895d43f3b3d810bfacd3945438e94dc5ac55fdac340352f48

RUN apk add --no-cache openssl=~3

USER nobody:nobody
ENTRYPOINT ["/usr/bin/openssl"]
