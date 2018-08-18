# CloudFlare DNS backup


## Rancher stack 

```
version: '2'
services:
  cfbkp:
    image: nikitux/cfbkp:v1.2.0
    environment:
      CF_EMAIL: admin@domain
      CF_TOKEN: xxxxxxx
      AWS_ACCESS_KEY_ID: KEYID
      AWS_SECRET_ACCESS_KEY: XXACCESS-KEY
      AWS_DEFAULT_REGION: us-west-1
      AWS_BUCKET_NAME: bucket-name/cloudflare
      AWS_S3_ENABLE: 'true'
    volumes:
    - cf-bkp:/bkp
    labels:
      io.rancher.container.pull_image: always

```

NPM Library
[CloudFlare-Backup](https://www.npmjs.com/package/cloudflare-backup)