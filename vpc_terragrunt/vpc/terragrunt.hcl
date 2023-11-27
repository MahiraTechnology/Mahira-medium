#terraform.hcl
terraform {
  source = "tfr:///terraform-aws-modules/vpc/aws?version=3.14.0"
}
include "root" {
  path = find_in_parent_folders()
}

locals {
  region            = "us-east-1"
  private_subnets   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets    = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  cidr              = "10.0.0.0/16"
}

inputs = {
  name = "mahiratechnology-vpc"
  cidr = local.cidr
  azs             = ["${local.region}a", "${local.region}b", "${local.region}c"]
  private_subnets = local.private_subnets
  public_subnets  = local.public_subnets
  map_public_ip_on_launch = false
  enable_nat_gateway   = true
  single_nat_gateway   = true
  one_nat_gateway_per_az  = false 
  public_route_tags = {
    Name = "mahiratechnology-public-route"
  }
  private_route_table_tags = {
    Name = "mahiratechnology-private-route"
  }
  nat_gateway_tags = {
    Name = "mahiratechnology-nat-gateway"
  }
  nat_eip_tags = {
    Name = "mahiratechnology-nat-gateway-eip"
  }
 // Enable DNS support and DNS hostnames
  enable_dns_support   = true
  enable_dns_hostnames = true
}