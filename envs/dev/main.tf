provider "aws" {
  region = "us-east-1"
}

module "dev_vpc" {
  source     = "../../modules/VPC"
  vpc_name   = "dev-vpc"
  cidr_block = "10.0.0.0/16"
}
