#!/bin/bash
echo pwd
echo "$(date) run before_install.sh: " >>/home/ubuntu/lab-aws/app/server/deploy.log

echo "$(date) cd /home/ubuntu/lab-aws/app/server" >>/home/ubuntu/lab-aws/app/server/deploy.log
cd /home/ubuntu/lab-aws/app/server >>/home/ubuntu/lab-aws/app/server/deploy.log

echo "$(date) npm install" >>/home/ubuntu/lab-aws/app/server/deploy.log
npm install >>/home/ubuntu/lab-aws/app/server/deploy.log
npm run build >>/home/ubuntu/lab-aws/app/server/deploy.log
