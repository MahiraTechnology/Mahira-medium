# terragrunt.hcl

terraform {
  source = "terraform-aws-modules/s3-bucket/aws"
}
include {
  path = find_in_parent_folders()
}
inputs = {
  bucket_name = "s3-bucket-block-public-access"
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}