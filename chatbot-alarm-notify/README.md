#                                           Seamless AWS CloudWatch Alarm Notifications in Microsoft Teams: A Terraform-Driven Integration
This repository provides Terraform scripts for setting up a seamless integration between AWS CloudWatch Alarms and Microsoft Teams. With this setup, you can receive timely and actionable notifications in your Teams channel when AWS CloudWatch Alarms are triggered.

Features
Automated Setup: Quickly set up the integration with Terraform scripts.
Real-time Notifications: Receive instant notifications in your Teams channel.
Customizable Alerts: Tailor the alerts to your specific needs with CloudWatch Alarms.

## Prerequisites
Before you begin, ensure you have the following:

AWS Account: You need an AWS account with the necessary permissions to create CloudWatch Alarms.
Microsoft Teams Account: Access to a Microsoft Teams channel where you want to receive notifications.
Terraform: Install Terraform on your local machine to execute the scripts.

## Getting Started
Clone the Repository:
git clone https://github.com/MahiraTechnology/Mahira-medium.git
cd chatbot-alarm-notify

### Initialize Terraform:
terraform init

Configure Variables:
Update the variables in variables.tf with your AWS and Microsoft Teams information.

Run Terraform:
terraform apply
Terraform will prompt you to confirm the changes. Type yes and press Enter.

Verify Setup:
Once Terraform completes, verify the setup by triggering an event that should activate your CloudWatch Alarm.

Check Microsoft Teams:
Head to your Microsoft Teams channel to see the notification triggered by the CloudWatch Alarm.

### Customization
Feel free to customize the Terraform scripts and CloudWatch Alarms based on your specific requirements. Adjust thresholds, actions, and notification settings as needed.

### Cleanup
To remove the integration and associated resources, run:
terraform destroy
Confirm the destruction by typing yes when prompted.

### Troubleshooting
If you encounter issues or have questions, plz ping us on medium.
