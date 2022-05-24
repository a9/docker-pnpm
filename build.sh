#!/usr/bin/env bash

VERSION=7.1.5

DOCKER_BUILDKIT=0 docker build -t "kuqoi/pnpm:$VERSION-alpine" .

docker tag kuqoi/pnpm:$VERSION-alpine kuqoi/pnpm:alpine
docker tag kuqoi/pnpm:$VERSION-alpine kuqoi/pnpm:7-alpine
docker tag kuqoi/pnpm:$VERSION-alpine kuqoi/pnpm:7.1-alpine
