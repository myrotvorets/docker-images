FROM alpine:3.20@sha256:e72ad0747b9dc266fca31fb004580d316b6ae5b0fdbbb65f17bbe371a5b24cff

RUN \
    apk add --no-cache nodejs=~20 npm=~10 python3=~3 g++=~13 make=~4 && \
    install -m 0755 -o nobody -g nogroup -d /.npm

ENV \
    NPM_CONFIG_FUND=0 \
    NPM_CONFIG_AUDIT=0 \
    SUPPRESS_SUPPORT=1 \
    NO_UPDATE_NOTIFIER=true

USER nobody:nogroup
