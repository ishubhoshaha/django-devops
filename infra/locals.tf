locals {
  env = terraform.workspace
  tf_aws_region = {
    dev = "us-east-1"
    uat = "us-east-1"
    prod = "us-east-1"
  }
  aws_region = tf_aws_region[local.env]
}