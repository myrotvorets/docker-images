#!/bin/sh

set -e

echo "${KUBE_CONFIG_DATA:-}" | base64 -d > /tmp/kubeconfig
export KUBECONFIG=/tmp/kubeconfig

case "${KUBECTL_VERSION:=latest}" in
    latest)
        KUBECTL=kubectl
    ;;

    *)
        KUBECTL=kubectl${KUBECTL_VERSION}
    ;;
esac

if [ ! -x "/usr/local/bin/${KUBECTL}" ]; then
    echo "::warning::unknown kubectl version requested: ${KUBECTL_VERSION}"
    KUBECTL=kubectl
fi

trap 'cleanup' 0 HUP INT QUIT ABRT TERM

cleanup() {
    rm -f "${KUBECONFIG}"
}

"/usr/local/bin/${KUBECTL}" "$@"
