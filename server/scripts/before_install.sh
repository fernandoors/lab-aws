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
echo 'npx tsc -p tsconfig.json --outDir /home/ubuntu/lab-aws/server/dist' >>/home/ubuntu/lab-aws/server/deploy.log
npx tsc -p tsconfig.json --outDir ./build >>/home/ubuntu/lab-aws/server/deploy.log
