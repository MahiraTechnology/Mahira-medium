# terragrunt.hcl

terraform {
  source = "terraform-aws-modules/iam/aws"
}
include {
  path = find_in_parent_folders()
}
inputs = {
  name             = "lambda-function-policy"
  policy           = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid = "DenyPublicAccess"
        Effect = "Deny"
        Principal = "*"
        Action = [
          "lambda:GetFunction",
          "lambda:InvokeFunction"
        ]
        Resource = [
          "arn:aws:lambda:<region>:<account-id>:function:<function-name>",
          "arn:aws:lambda:<region>:<account-id>:function:<function-name>:*"
        ]
        Condition = {
          "StringNotEquals" : {
            "aws:sourceVpc" : "YOUR_DEFAULT_VPC-ID"
          }
        }
      }
    ]
  })
}