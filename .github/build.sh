#!/bin/sh

set -e
set -x

TAG=${GITHUB_SHA:-$(date +%s)}

touch built_images.txt
for i in */; do
    if [ -f "${i}Dockerfile" ]; then
        (cd "${i}" && docker build --pull -t "myrotvorets/${i%/}:latest" -t "${i%/}:${TAG}" .) && echo "${i%/}:${TAG}" >> built_images.txt
    fi
done
