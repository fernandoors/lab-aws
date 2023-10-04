#!/bin/bash
echo pwd
echo "$(date) run before_install.sh: " >>/home/ubuntu/lab-aws/app/deploy.log

echo "$(date) cd /home/ubuntu/lab-aws/app" >>/home/ubuntu/lab-aws/app/deploy.log
cd /home/ubuntu/lab-aws/app >>/home/ubuntu/lab-aws/app/deploy.log

echo "$(date) npm install" >>/home/ubuntu/lab-aws/app/deploy.log
npm install >>/home/ubuntu/lab-aws/app/deploy.log
npm run build >>/home/ubuntu/lab-aws/app/deploy.log
