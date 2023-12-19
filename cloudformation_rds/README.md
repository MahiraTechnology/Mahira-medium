
#                       AWS CloudFormation - Deploy Amazon RDS Instance & Monitoring Alarms

## Overview
This AWS CloudFormation template simplifies the deployment of an Amazon RDS (Relational Database Service) instance along with the setup of monitoring alarms. By using CloudFormation, you can automate the provisioning and configuration of your database infrastructure.

## Prerequisites
Before you begin, ensure that you have:
An AWS account with the necessary permissions to create RDS instances and CloudWatch Alarms.
AWS CLI installed and configured.
Basic understanding of AWS CloudFormation.

Deployment Steps
Clone the Repository:
git clone https://github.com/MahiraTechnology/Mahira-medium.git
cd cloudformation_rds

Modify Parameters (Optional):
Open the parameters.json file and modify the parameters as needed. This includes specifying the DB instance details, username, password, and monitoring thresholds.

Deploy the Stack:
aws cloudformation create-stack --stack-name my-rds-stack --template-body file://template.yml --parameters file://parameters.json --capabilities CAPABILITY_NAMED_IAM
Adjust the stack-name parameter as desired.

Monitor Stack Creation:
Monitor the stack creation progress either through the AWS Management Console or using the AWS CLI.

Access RDS Instance:
Once the stack creation is complete, retrieve the endpoint of the RDS instance from the AWS Management Console.

Parameters
DBName: The name of the initial database.
DBUser: The master username for the database.
DBPassword: The master password for the database.
DBInstanceType: The compute and memory capacity of the Amazon RDS instance.
MonitoringInterval: The granularity of metrics, in seconds, to gather for the specified RDS instance.
CPUThreshold: The CPU utilization threshold for the CloudWatch alarm.
StorageThreshold: The storage space threshold for the CloudWatch alarm.

Clean-Up
To delete the CloudFormation stack, run:
aws cloudformation delete-stack --stack-name my-rds-stack

