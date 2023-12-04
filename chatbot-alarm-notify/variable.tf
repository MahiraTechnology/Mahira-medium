# variable.tf
variable "ami_id" {
  type = string
  default = "ami-xxxxxxxxxxxxxxxxxx"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}