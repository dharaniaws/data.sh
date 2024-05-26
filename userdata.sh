#!bin/bash
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
sudo git clone https://github.com/dharaniaws/USA-Housing.git
cd USA-Housing/
terraform init
terraform plan
terraform apply -auto-approve
