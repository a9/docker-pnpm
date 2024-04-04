FROM node:20.12.0-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk --no-cache add tzdata; \
    npm config set registry https://registry.npmmirror.com/; \
    npm install -g pnpm@8.15.6; \
    pnpm config set enable-pre-post-scripts true
