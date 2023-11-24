variable "aws_region" {
  default = "us-east-1"
}

variable "rest_api_name" {
  description = "The name of your API"
  type        = string
  default     = "mahira-api"
}

variable "stage_name" {
  description = "The name of your API stage"
  type        = string
  default     = "mahira-stage"
}

variable "lamda_arn" {
  type        = string
  description = "lamda function arn"
  default     = "YOUR LAMBDA ARN"
}