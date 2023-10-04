#!/bin/bash
echo 'run after_install.sh: ' >>/home/ubuntu/lab-aws/server/deploy.log

echo 'cd /home/ubuntu/nodejs-aws-codedeploy-pipeline' >>/home/ubuntu/lab-aws/server/deploy.log
cd /home/ubuntu/lab-aws/server >>/home/ubuntu/lab-aws/server/deploy.log

echo 'npm install' >>/home/ubuntu/lab-aws/server/deploy.log
npm install >>/home/ubuntu/lab-aws/server/deploy.log
npm build >>/home/ubuntu/lab-aws/server/deploy.log
