FROM alpine:3.16@sha256:bc41182d7ef5ffc53a40b044e725193bc10142a1243f395ee852a8d9730fc2ad
RUN \
    apk --no-cache upgrade && \
    wget -q https://dl.k8s.io/release/v1.18.20/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.18 && \
    wget -q https://dl.k8s.io/release/v1.19.16/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.19 && \
    wget -q https://dl.k8s.io/release/v1.20.15/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.20 && \
    wget -q https://dl.k8s.io/release/v1.21.12/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl1.21 && \
    wget -q https://dl.k8s.io/release/v1.22.9/bin/linux/amd64/kubectl  -O /usr/local/bin/kubectl1.22 && \
    wget -q https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl  -O /usr/local/bin/kubectl1.23 && \
    wget -q https://dl.k8s.io/release/v1.24.0/bin/linux/amd64/kubectl  -O /usr/local/bin/kubectl1.24 && \
    chmod a+x /usr/local/bin/kubectl* && \
    ln -s /usr/local/bin/kubectl1.23 /usr/local/bin/kubectl

COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
