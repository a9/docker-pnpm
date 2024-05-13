FROM node:20.13.1-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk --no-cache add tzdata; \
    npm install -g pnpm@9.1.1; \
    pnpm config set enable-pre-post-scripts true;\
    pnpm config set registry https://registry.npmmirror.com/; \
    rm -rf /opt/yarn*; \
    rm -rf /usr/local/bin/yarn*; \
    rm -rf ~/.npm
