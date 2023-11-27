#                                                                   Automating AWS VPC Creation with Terragrunt
This repository contains Terraform and Terragrunt configurations to automate the creation of an AWS VPC (Virtual Private Cloud). The setup includes subnets, security groups, and other essential components, providing a robust foundation for your AWS infrastructure.

## Prerequisites
Before you begin, ensure you have the following tools installed on your local machine:
Terraform
Terragrunt
Make sure you have valid AWS credentials configured to allow Terraform to interact with your AWS account.

## Getting Started
Clone this repository to your local machine:
git clone https://github.com/MahiraTechnology/Mahira-medium.git
Change into the project directory:
cd terragrunt_vpc/vpc

Initialize Terragrunt:
terragrunt init

Create a Terraform execution plan:
terragrunt plan

Apply the Terraform changes:
terragrunt apply

Configuration
The terragrunt_vpc/terragrunt.hcl file contains configurable variables for customizing your VPC. Adjust these variables according to your requirements.

hcl
### terragrunt.hcl
    bucket         = "YOUR-TERRAGRUNT-S3-BUCKET-NAME"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "YOUR-DYNAMODB-TABLE"

## Cleanup
To destroy the created resources and clean up your AWS account, run:
terragrunt destroy
