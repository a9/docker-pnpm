FROM node:18.4.0-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk --no-cache add tzdata

RUN npm config set registry https://registry.npmmirror.com/; \
    npm install -g pnpm@7.3.0; \
    pnpm config set enable-pre-post-scripts true
