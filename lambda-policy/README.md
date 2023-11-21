#                                                               Securing AWS Lambda Functions

## Overview
This repository provides infrastructure-as-code (IaC) solutions using Terragrunt to secure your AWS Lambda functions by preventing public access. Additionally, manual step-by-step procedures are outlined for users who prefer a hands-on approach.

## Table of Contents

## Prerequisites

Before you begin, ensure you have the following:

AWS account with appropriate permissions
Terraform and Terragrunt installed locally
Basic knowledge of AWS Lambda and security configurations
Terragrunt Automation

Clone the repository to your local machine:
git clone https://github.com/MahiraTechnology/Mahira-medium.git

Navigate to the terragrunt directory:
cd lambda-policy/lambda
Update the lambda-policy/terragrunt.hcl file with your AWS credentials and desired configuration.

Run Terragrunt commands to apply the infrastructure changes:
terragrunt init
terragrunt apply

Confirm the changes when prompted.

Manual Procedures
If you prefer manual configuration, follow these step-by-step procedures:

Access AWS Lambda Console:
Open the AWS Lambda Console.
Log in with your AWS account.

Select Lambda Function:
Choose the Lambda function you want to secure.

Update Function Configuration:
In the "Configuration" tab, find the "Permissions" section.
Adjust the function's execution role to limit unnecessary permissions.

Review Networking Configurations:
Ensure the Lambda function is not assigned to a VPC unnecessarily.

Check Function Trigger Configurations:
Review event sources and confirm they are appropriately configured.

Test the Function:
Execute test cases to ensure the function still performs as expected.