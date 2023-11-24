#                                                               Automate Your API Gateway with Terraform
This repository contains Terraform code to automate the provisioning of an API Gateway on AWS. Managing your API Gateway infrastructure as code allows for versioning, collaboration, and repeatability. This guide will walk you through the steps to deploy and manage your API Gateway using Terraform.

## Prerequisites
Before you begin, make sure you have the following installed:

Terraform: Install Terraform on your local machine. You can download it from Terraform Downloads.
AWS CLI: Configure the AWS CLI with the necessary credentials. You can install it and set up your credentials by following the instructions at Configuring the AWS CLI.

## Getting Started
Clone the repository to your local machine.
git clone https://github.com/MahiraTechnology/Mahira-medium.git
cd api-gateway

Initialize Terraform in the project directory.
terraform init

Apply the Terraform configuration to create the API Gateway.
terraform apply

Confirm the changes by typing yes when prompted.

## Cleaning Up
If you want to tear down the API Gateway and associated resources:
terraform destroy
Type yes when prompted to confirm the deletion.

Additional Resources
Terraform Documentation
AWS API Gateway Documentation