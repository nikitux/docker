#!/bin/sh

touch /bkp/zones.txt

if ! [ -z "$AWS_S3_ENABLE" ] && [ "$AWS_S3_ENABLE" = "true" ]; then 
  
  sed -i "/touch \/bkp\/zones.txt/a aws s3 sync \/bkp\/ s3://$AWS_BUCKET_NAME " /etc/logrotate.d/cfbkp
fi


/usr/sbin/crond -f

