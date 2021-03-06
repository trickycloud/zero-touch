#!/bin/bash

cd /home/ubuntu/zer0-touch-cloud/version-2
cd zero_touch_cloud
terraform output ec2_public_ip > output.txt
echo [webserver] > i.txt
sed -n '3p;2p' output.txt >> i.txt
sed 's/"//g' i.txt > u.txt
sed 's/,//g' u.txt > final.txt
sed 's/ //g' final.txt > output.txt
{
    echo  [all:vars] 
    echo ansible_ssh_private_key_file=/home/ubuntu/zer0-touch-cloud/version-2/ansible/test-api.pem 
    echo ansible_user=ubuntu 
} >> output.txt

