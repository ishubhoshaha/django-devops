terraform {
  backend "s3" {
    bucket = "tfstate-django-demo"
    key = "keyfiles"
    region = "ap-southeast-1"
    dynamodb_table = "tfstate-django-demo"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = local.aws_region
}