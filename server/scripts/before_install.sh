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

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'Replace dist content with the build: cp -Rf ./build/* /home/ubuntu/lab-aws/server/dist/' >>/home/ubuntu/lab-aws/server/deploy.log
cp -Rf ./build/* /home/ubuntu/lab-aws/server/dist/ >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'Clean build folder: rm -rf ./build/' >>/home/ubuntu/lab-aws/server/deploy.log
rm -rf ./build/ >>/home/ubuntu/lab-aws/server/deploy.log
