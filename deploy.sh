#!/bin/bash

cd /home/ubuntu/zer0-touch-cloud/version-2
cd zero_touch_cloud
terraform init
terraform plan -input=false -out tfplan -var-file=terraform.tfvars -lock=false
terraform apply -input=false tfplan
