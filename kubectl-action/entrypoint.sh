#!/bin/sh

set -e

echo "${KUBE_CONFIG_DATA:-}" | base64 -d > /tmp/kubeconfig
export KUBECONFIG=/tmp/kubeconfig

case "${KUBECTL_VERSION:=latest}" in
    1.1[89] | 1.2[012])
        KUBECTL=kubectl${KUBECTL_VERSION}
    ;;

    latest)
        KUBECTL=kubectl
    ;;

    *)
        echo "::warning::unknown kubectl version requested: ${KUBECTL_VERSION}"
        KUBECTL=kubectl
    ;;
esac

trap 'cleanup' 0 HUP INT QUIT ABRT TERM

cleanup() {
    rm -f "${KUBECONFIG}"
}

"/usr/local/bin/${KUBECTL}" "$@"
