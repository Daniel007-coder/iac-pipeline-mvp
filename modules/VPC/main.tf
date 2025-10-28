variable "vpc_name" {
  type = string
  description = "Name of the VPC"
}

variable "cidr_block" {
  type = string
  description = "CIDR block for the VPC"
}

resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
}

output "vpc_id" {
  value = aws_vpc.this.id
}
