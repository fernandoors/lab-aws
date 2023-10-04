#!/bin/bash
pwd
ls
echo "$(pwd)" >>/home/ubuntu/lab-aws/server/deploy.log
echo "$(ls)" >>/home/ubuntu/lab-aws/server/deploy.log
echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'run before_install.sh: ' >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'cd /home/ubuntu/lab-aws/server' >>/home/ubuntu/lab-aws/server/deploy.log
cd /home/ubuntu/lab-aws/server >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'npm install' >>/home/ubuntu/lab-aws/server/deploy.log
npm install >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) $(pwd)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'ls -l dist/index.js' >>/home/ubuntu/lab-aws/server/deploy.log
ls -l dist/index.js >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) $(pwd)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'ls -l src/index.ts ' >>/home/ubuntu/lab-aws/server/deploy.log
ls -l src/index.ts >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'npm build' >>/home/ubuntu/lab-aws/server/deploy.log
npm run build >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) $(pwd)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'ls -l dist/index.js' >>/home/ubuntu/lab-aws/server/deploy.log
ls -l dist/index.js >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date) $(pwd)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'ls -l src/index.ts ' >>/home/ubuntu/lab-aws/server/deploy.log
ls -l src/index.ts >>/home/ubuntu/lab-aws/server/deploy.log
