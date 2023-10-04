#!/bin/bash
echo "$(date) run before_install.sh: " >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) cd /home/ubuntu/lab-aws/server" >>/home/ubuntu/lab-aws/server/deploy.log
pwd
ls
cd /home/ubuntu/lab-aws/server >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) npm install" >>/home/ubuntu/lab-aws/server/deploy.log
npm install >>/home/ubuntu/lab-aws/server/deploy.log
npm run build >>/home/ubuntu/lab-aws/server/deploy.log
