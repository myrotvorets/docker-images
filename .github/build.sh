#!/bin/sh

set -e
set -x

for i in $(ls -1); do
    if [ -f "$i/Dockerfile" ]; then
        (cd "$i" && docker build -t "myrotvorets/$i:latest" .)
    fi
done
