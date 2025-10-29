provider "aws" {
  region = "us-east-1"
}

module "prod_vpc" {
  source     = "../../modules/VPC"
  vpc_name   = "prod-vpc"
  cidr_block = "10.1.0.0/16"
}

module "s3" {
  source      = "../../modules/S3"
  environment = "prod"
}
