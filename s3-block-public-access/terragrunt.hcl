# First u need to create a s3 bucket and dynamodb table for storing your terraform configuration files and update their names in the above bucket and dynamodb_table values

remote_state {
  backend = "s3"
  config = {
    bucket         = "YOUR-TERRAGRUNT-S3-BUCKET-NAME"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "YOUR-DYNAMODB-TABLE"
  }
 generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
 