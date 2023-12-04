output "sns_topic_arn" {
  description = "sns topic arn"
  value = aws_sns_topic.alarm_notification_teams.arn
}

output "arn_prefix" {
  description = "sns topic arn prefix"
  value = aws_sns_topic.alarm_notification_teams.name_prefix
}

output "chatbot_id" {
  description = "chatbot id"
  value = awscc_chatbot_microsoft_teams_channel_configuration.alarm_status.id
}

output "alarm_arn" {
  description = "this alarm is for ec2 instance"
  value = aws_cloudwatch_metric_alarm.ec2-alarm.arn
}