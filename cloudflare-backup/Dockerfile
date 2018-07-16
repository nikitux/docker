FROM node:8.11-alpine

MAINTAINER nikitux <nikitux@gmail.com>


RUN apk update && apk add --no-cache logrotate && npm install -g cloudflare-backup

COPY cfbkp /etc/logrotate.d/cfbkp
COPY entrypoint.sh /entrypoint.sh

ENV CF_EMAIL=admin@domain
ENV CF_TOKEN=xxx


CMD [ "/entrypoint.sh" ]
