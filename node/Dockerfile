FROM alpine:3.16@sha256:bc41182d7ef5ffc53a40b044e725193bc10142a1243f395ee852a8d9730fc2ad

RUN \
    apk --no-cache upgrade && \
    apk add --no-cache nodejs=~16 npm=~8 && \
    install -m 0755 -o nobody -g nogroup -d /.npm

ENV \
    NPM_CONFIG_FUND=0 \
    NPM_CONFIG_AUDIT=0 \
    SUPPRESS_SUPPORT=1 \
    NO_UPDATE_NOTIFIER=true

USER nobody:nogroup
