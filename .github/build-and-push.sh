#!/bin/sh

set -e

for i in cfssl node node-build node-current node-current-min node-min tinc; do
    (cd "$i" && docker build -t "myrotvorets/$i:latest" && docker push "myrotvorets/$i:latest")
done
