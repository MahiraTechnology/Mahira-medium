#                                       Securing Your AWS S3 Buckets: Enforcing Block Public Access with Terragrunt Automation and Step-by-Step Manual Guide
This repository provides Terraform and step-by-step manual instructions to enforce Block Public Access settings for your AWS S3 buckets. By implementing this security measure, you enhance the protection of your S3 data by preventing public access at the bucket and object levels.

## Prerequisites
Terraform installed
AWS credentials configured with the necessary permissions

## Usage
Clone this repository:
git clone https://github.com/MahiraTechnology/Mahira-medium.git
cd s3-block-public-access/s3-policy

Update the s3-block-public-access/terragrunt.hcl file with your AWS credentials and desired configuration.

Initialize and apply the Terraform configuration:
terragrunt init
terragrunt apply

Confirm the changes when prompted.
Manual Setup
If you prefer a manual approach, follow these steps:

Navigate to AWS S3 Console:

Open the AWS S3 Console.
Select the Target Bucket:

Choose the S3 bucket for which you want to enforce Block Public Access.
Configure Block Public Access:

In the bucket details, go to the "Permissions" tab.
Scroll down to the "Block public access (bucket settings)" section.
Enable Block Public Access:

Turn on the following settings:
Block all public access
Block public access to buckets and objects granted through new access control lists (ACLs)
Block public access to buckets and objects granted through any access control lists (ACLs)
Block public access to buckets and objects granted through new public bucket or access point policies
Review and Save:

Review the changes and click "Save" to apply the Block Public Access settings.
