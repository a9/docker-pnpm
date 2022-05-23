#!/usr/bin/env bash

DOCKER_BUILDKIT=0 docker build -t "kuqoi/pnpm:7.1.3-alpine" .

docker tag kuqoi/pnpm:7.1.3-alpine kuqoi/pnpm:alpine
docker tag kuqoi/pnpm:7.1.3-alpine kuqoi/pnpm:7-alpine
docker tag kuqoi/pnpm:7.1.3-alpine kuqoi/pnpm:7.1-alpine
