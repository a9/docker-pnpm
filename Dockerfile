FROM node:19.0.0-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk --no-cache add tzdata; \
    npm config set registry https://registry.npmmirror.com/; \
    npm install -g pnpm@7.14.1; \
    pnpm config set enable-pre-post-scripts true
