#!/bin/bash

echo "$(date) run application_start.sh: " >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) sudo pm2 restart app-server" >>/home/ubuntu/lab-aws/server/deploy.log
sudo pm2 restart app-server >>/home/ubuntu/lab-aws/server/deploy.log
