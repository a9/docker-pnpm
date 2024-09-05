#!/usr/bin/env bash

source ./env.sh

docker --debug build -t "$TAG_PATCH" .

# docker tag $TAG_PATCH $TAG
# docker tag $TAG_PATCH $TAG_MAJOR
# docker tag $TAG_PATCH $TAG_MINOR
docker tag $TAG_PATCH $ALIYUN_TAG_PATCH
