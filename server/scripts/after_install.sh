#!/bin/bash

pwd
ls
echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'run after_install.sh: ' >>/home/ubuntu/lab-aws/server/deploy.log
echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'pm2 status app-server' >>/home/ubuntu/lab-aws/server/deploy.log
pm2 status app-server >>/home/ubuntu/lab-aws/server/deploy.log
pm2 status app-server
echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'pm2 restart app-server --update-env' >>/home/ubuntu/lab-aws/server/deploy.log
pm2 restart app-server --update-env >>/home/ubuntu/lab-aws/server/deploy.log
