#!/usr/bin/env bash

export NAME=kuqoi/pnpm
# export VERSION=alpine
# export VERSION_MAJAR=9-alpine
# export VERSION_MINOR=9.9-alpine
export VERSION_PATCH=9.12.3-alpine

# export TAG="${NAME}:${VERSION}"
# export TAG_MAJOR="${NAME}:${VERSION_MAJAR}"
# export TAG_MINOR="${NAME}:${VERSION_MINOR}"
export TAG_PATCH="${NAME}:${VERSION_PATCH}"
export ALIYUN_TAG_PATCH="registry.cn-hangzhou.aliyuncs.com/a9/pnpm:${VERSION_PATCH}"
