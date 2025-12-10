FROM alpine:3.23@sha256:51183f2cfa6320055da30872f211093f9ff1d3cf06f39a0bdb212314c5dc7375

RUN \
    apk add --no-cache nodejs=~22 npm=~11 && \
    install -m 0755 -o nobody -g nogroup -d /.npm

ENV \
    NPM_CONFIG_FUND=0 \
    NPM_CONFIG_AUDIT=0 \
    SUPPRESS_SUPPORT=1 \
    NO_UPDATE_NOTIFIER=true

USER nobody:nogroup
