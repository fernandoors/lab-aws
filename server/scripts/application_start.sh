#!/bin/bash

echo 'run application_start.sh: ' >>/home/ubuntu/lab-aws/server/deploy.log

echo 'pm2 restart app-server' >>/home/ubuntu/lab-aws/server/deploy.log
pm2 restart app-server >>/home/ubuntu/lab-aws/server/deploy.log
