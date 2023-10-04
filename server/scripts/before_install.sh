#!/bin/bash
echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'run before_install.sh: ' >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'cd /home/ubuntu/lab-aws/server' >>/home/ubuntu/lab-aws/server/deploy.log
cd /home/ubuntu/lab-aws/server >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'npm install' >>/home/ubuntu/lab-aws/server/deploy.log
npm install >>/home/ubuntu/lab-aws/server/deploy.log
echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'npm build' >>/home/ubuntu/lab-aws/server/deploy.log
npm run build >>/home/ubuntu/lab-aws/server/deploy.log
