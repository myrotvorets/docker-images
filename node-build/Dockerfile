FROM alpine:3.17@sha256:8914eb54f968791faf6a8638949e480fef81e697984fba772b3976835194c6d4

RUN \
    apk add --no-cache nodejs=~18 npm=~9 python3=~3 g++=~12 make=~4 && \
    install -m 0755 -o nobody -g nogroup -d /.npm

ENV \
    NPM_CONFIG_FUND=0 \
    NPM_CONFIG_AUDIT=0 \
    SUPPRESS_SUPPORT=1 \
    NO_UPDATE_NOTIFIER=true

USER nobody:nogroup
