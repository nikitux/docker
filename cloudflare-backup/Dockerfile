FROM node:8.11-alpine

MAINTAINER nikitux <nikitux@gmail.com>

RUN apk -v --update add --no-cache \
        logrotate \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/* && \
    npm install -g cloudflare-backup


COPY cfbkp /etc/logrotate.d/cfbkp
COPY entrypoint.sh /entrypoint.sh

ENV CF_EMAIL=admin@domain
ENV CF_TOKEN=xxx
ENV AWS_ACCESS_KEY_ID=id
ENV AWS_SECRET_ACCESS_KEY=key
ENV AWS_DEFAULT_REGION=region
ENV AWS_BUCKET_NAME=bucket/cloudflare
ENV AWS_S3_ENABLE=false

CMD [ "/entrypoint.sh" ]