output "api_gateway_url" {
  value = aws_api_gateway_deployment.deploy.invoke_url
}

output "deployment_arn" {
  value = aws_api_gateway_deployment.deploy.execution_arn
}