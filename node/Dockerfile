FROM alpine:3.14.0

RUN \
    apk --no-cache upgrade && \
    apk add --no-cache nodejs=~14 npm=~14 && \
    install -m 0755 -o nobody -g nogroup -d /.npm

ENV \
    NPM_CONFIG_FUND=0 \
    NPM_CONFIG_AUDIT=0 \
    SUPPRESS_SUPPORT=1 \
    NO_UPDATE_NOTIFIER=true

USER nobody:nogroup
