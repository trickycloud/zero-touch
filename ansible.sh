#!/bin/bash

cd /home/ubuntu/zer0-touch-cloud/version-2
cd zero_touch_cloud
cp ./output.txt ../ansible/myinventory
cd ../ansible
ansible-playbook playbook.yml -i myinventory --ssh-common-args='-o StrictHostKeyChecking=no'


