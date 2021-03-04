# Geo Application Infra as Code Repo

This repo is used for terraform deployment of geo base and geo app module from terraform-module repo.

Instructions to run the code :

Pre Requisites :
1. Code is tested with terraform 0.14.7 version
2. AWS secret and access key are set up for connecting to AWS Account
3. ssh key for EC2 instances added in aws.

Step:

1. Create deploy directory (mkdir deploy)
2. cd deploy
3. git clone https://github.com/dinkarbhagia/terraform-modules.git
4. git clone https://github.com/dinkarbhagia/terraform.git
5. cd terraform
6. Check version.tf and update provider setting as per your environment
7. Setup variables.tf for geo and ssh_key variable as per requirement