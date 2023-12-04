#main.tf

resource "aws_sns_topic" "alarm_notification_teams" {
  name = "cloudwatch-alarms-notification-teams"
}

resource "aws_sns_topic_subscription" "updates_sqs_target" {
  topic_arn = aws_sns_topic.alarm_notification_teams.arn
  protocol  = "https"
  endpoint  = "https://global.sns-api.chatbot.amazonaws.com"
  depends_on = [
    aws_sns_topic.alarm_notification_teams
  ]
}

resource "aws_sns_topic_policy" "notification_teams_policy" {
  arn = aws_sns_topic.alarm_notification_teams.arn

  policy = data.aws_iam_policy_document.sns_topic_policy.json
}

data "aws_iam_policy_document" "sns_topic_policy" {
  policy_id = "alarm-chatbot-sns-policy"

  statement {
    actions = [
      "sns:Publish"
    ]
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["cloudwatch.amazonaws.com"]
    }

    resources = [
      aws_sns_topic.alarm_notification_teams.arn,
    ]

    sid = "chatbot-sns-policy"
  }
}

resource "aws_iam_role" "chatbot_role" {
  name = "alarm-chatbot-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "chatbot.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy" "chatbot_policy" {
  name    = "alarm-chatbot-policy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
         "events:ListRules",
         "events:ListTargetsByRule",
         "events:DescribeRule"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "chatbot_attach" {
  role       = aws_iam_role.chatbot_role.name
  policy_arn = aws_iam_policy.chatbot_policy.arn
}
# Copy the above splitted values into the below resource.  
resource "awscc_chatbot_microsoft_teams_channel_configuration" "alarm_status" {
  configuration_name = "cloudwatch-alarm-notifications"
  iam_role_arn = aws_iam_role.chatbot_role.arn
  team_id          = "155e5f151-4f7b-4f8c-5e5f-5e4d56e465f"
  teams_channel_id = "19%5e45dew54e6f6ew5f4ewfee6f4f4w%40thread.tacv2"
  teams_tenant_id = "sfd65465-fds07-4937-a846-646465456465"
  sns_topic_arns = [aws_sns_topic.alarm_notification_teams.arn]
}

resource "aws_cloudwatch_metric_alarm" "ec2-alarm" {
  alarm_name          = "instance-monitor"
  alarm_description   = "This alarm will trigger when CPU utilization is Greater Than 80%"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  datapoints_to_alarm = 1
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 10
  alarm_actions       = [aws_sns_topic.alarm_notification_teams.arn]
  actions_enabled     = true
  ok_actions          = [aws_sns_topic.alarm_notification_teams.arn]
  dimensions = {
    Instance_id = aws_instance.ec2_instance.id
  }
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id  # Replace with your desired AMI ID
  instance_type = var.instance_type
  key_name      = "YOUR-KEYPAIR-NAME"
  tags = {
    Name = "Alarm-instance"
  }
}
