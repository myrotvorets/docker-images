#!/bin/sh

set -e
set -x

for i in $(ls -1); do
    if [ -f "$i/Dockerfile" ]; then
        (cd "$i" && docker build --pull -t "myrotvorets/$i:latest" .)
    fi
done
