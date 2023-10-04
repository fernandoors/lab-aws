#!/bin/bash

echo 'run before_install.sh: ' >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) 'copy dist files to project folder'" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'cp -Rf dist/ /home/ubuntu/lab-aws/server' >>/home/ubuntu/lab-aws/server/deploy.log
cp -Rf dist/ /home/ubuntu/lab-aws/server >>/home/ubuntu/lab-aws/server/deploy.log
