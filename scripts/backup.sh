#!/bin/bash

/home/ec2-user/.nvm/versions/node/v8.6.0/bin/node /home/ec2-user/dynamo-backup-to-s3/bin/dynamo-backup-to-s3 -b $DYNAMODB_BUCKET -r 0.5 -i DEV-Benefits --aws-region $AWS_REGION

if [ ! -f /home/ec2-user/debug-mode ]; then
  shutdown -h now
else
  rm /home/ec2-user/debug-mode
fi
