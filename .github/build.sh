#!/bin/sh

set -e
set -x

TAG=${GITHUB_SHA:-$(date +%s)}

for i in */; do
    if [ -f "${i}Dockerfile" ]; then
        (cd "${i}" && docker build --pull -t "myrotvorets/${i#/}:latest" -t "${i#/}:${TAG}" .)
    fi
done
