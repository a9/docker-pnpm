FROM node:18.2.0-alpine

RUN apk --no-cache add tzdata; \
    npm install -g pnpm; \
    pnpm config set registry https://registry.npmmirror.com/; \
    pnpm config set enable-pre-post-scripts true
