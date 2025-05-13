resource "aws_vpc" "prod-vpc" {
  cidr_block = var.cidr_block
  tags = {
    Key = "Name"
    Value= "prod-vpc"
  }
}

