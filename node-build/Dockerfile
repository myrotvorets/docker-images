FROM alpine:3.20@sha256:77726ef6b57ddf65bb551896826ec38bc3e53f75cdde31354fbffb4f25238ebd

RUN \
    apk add --no-cache nodejs=~20 npm=~10 python3=~3 g++=~13 make=~4 && \
    install -m 0755 -o nobody -g nogroup -d /.npm

ENV \
    NPM_CONFIG_FUND=0 \
    NPM_CONFIG_AUDIT=0 \
    SUPPRESS_SUPPORT=1 \
    NO_UPDATE_NOTIFIER=true

USER nobody:nogroup
