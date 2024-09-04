FROM node:22.8.0-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk --no-cache add tzdata; \
    npm install -g pnpm@8.15.9; \
    pnpm config set enable-pre-post-scripts true;\
    pnpm config set registry https://registry.npmmirror.com/; \
    rm -rf /opt/yarn*; \
    rm -rf /usr/local/bin/yarn*; \
    rm -rf ~/.npm
