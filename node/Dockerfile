FROM alpine:3.15.0

RUN \
    apk --no-cache upgrade && \
    apk add --no-cache nodejs-current=~16 npm=~7 && \
    install -m 0755 -o nobody -g nogroup -d /.npm

ENV \
    NPM_CONFIG_FUND=0 \
    NPM_CONFIG_AUDIT=0 \
    SUPPRESS_SUPPORT=1 \
    NO_UPDATE_NOTIFIER=true

USER nobody:nogroup
