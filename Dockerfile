FROM node:22.11.0-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk --no-cache add tzdata; \
    npm config set registry https://registry.npmmirror.com/; \
    rm -rf /opt/yarn*; \
    rm -rf /usr/local/bin/yarn*; \
    npm install -g pnpm@9.12.3; \
    rm -rf ~/.npm; \
    pnpm config set enable-pre-post-scripts true;
