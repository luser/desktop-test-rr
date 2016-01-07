#!/bin/sh

set -v -e -x

docker run --name rr-builder luser/rr-ubuntu-12.04:0.1
# This sucks, should just put the binary somewhere. (tooltool?)
docker cp rr-builder:/tmp/rr/obj/dist/ .
docker rm rr-builder
docker build -t luser/desktop-test:0.5.3 .
rm -rf ./dist
