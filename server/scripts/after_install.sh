#!/bin/bash

pwd
ls
echo "$(date) run after_install.sh: " >>/home/ubuntu/lab-aws/server/deploy.log
echo "$(date) pm2 status app-server" >>/home/ubuntu/lab-aws/server/deploy.log
pm2 status app-server >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) pm2 restart app-server --update-env" >>/home/ubuntu/lab-aws/server/deploy.log
pm2 restart app-server --update-env >>/home/ubuntu/lab-aws/server/deploy.log
