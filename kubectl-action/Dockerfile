FROM alpine:3.20@sha256:77726ef6b57ddf65bb551896826ec38bc3e53f75cdde31354fbffb4f25238ebd
RUN \
    apk --no-cache upgrade && \
    wget -q https://dl.k8s.io/release/v1.18.20/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.18 && \
    wget -q https://dl.k8s.io/release/v1.19.16/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.19 && \
    wget -q https://dl.k8s.io/release/v1.20.15/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.20 && \
    wget -q https://dl.k8s.io/release/v1.21.14/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.21 && \
    wget -q https://dl.k8s.io/release/v1.22.17/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.22 && \
    wget -q https://dl.k8s.io/release/v1.23.16/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.23 && \
    wget -q https://dl.k8s.io/release/v1.24.10/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.24 && \
    wget -q https://dl.k8s.io/release/v1.25.6/bin/linux/amd64/kubectl  -O /usr/local/bin/kubectl1.25 && \
    chmod a+x /usr/local/bin/kubectl* && \
    ln -s /usr/local/bin/kubectl1.24 /usr/local/bin/kubectl

COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
