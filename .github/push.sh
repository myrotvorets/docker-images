#!/bin/sh

set -e
set -x

for i in $(docker image ls --format "{{ .Repository }}" "myrotvorets/*"); do
    docker push "$i:latest"
done
