#!/bin/bash

echo "$(date): 'run after_install.sh: '" >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date): 'pm2 status app-server'" >>/home/ubuntu/lab-aws/server/deploy.log
pm2 status app-server

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'cd /home/ubuntu/lab-aws/server' >>/home/ubuntu/lab-aws/server/deploy.log
cd /home/ubuntu/lab-aws/server >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'Replace dist content with the build: cp -Rf ./build/* /home/ubuntu/lab-aws/server/dist/' >>/home/ubuntu/lab-aws/server/deploy.log
cp -Rf ./build/* /home/ubuntu/lab-aws/server/dist/ >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date)" >>/home/ubuntu/lab-aws/server/deploy.log
echo 'Clean build folder: rm -rf ./build/' >>/home/ubuntu/lab-aws/server/deploy.log
rm -rf ./build/ >>/home/ubuntu/lab-aws/server/deploy.log

echo "$(date): 'pm2 status app-server'" >>/home/ubuntu/lab-aws/server/deploy.log
pm2 status app-server

echo "$(date) 'pm2 restart app-server --update-env'" >>/home/ubuntu/lab-aws/server/deploy.log
pm2 restart app-server --update-env >>/home/ubuntu/lab-aws/server/deploy.log
exit 0
