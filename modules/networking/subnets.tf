
data "aws_availability_zones" "az" {
  
}

resource "aws_subnet" "public-subnet" {
  count = length(var.public_cidr_blocks)
  cidr_block = element(var.public_cidr_blocks,count.index)
  availability_zone = data.aws_availability_zones.az.names[count.index]
  vpc_id = aws_vpc.prod-vpc.id
  tags = {
    Key = "Name"
    Value= "Public-Subnet-${count.index+1}"
  }
}

# resource "aws_subnet" "private-subnet" {
#     count = length(var.private_subnet_cidr_blocks)
#   availability_zone = data.aws_availability_zones.az.names[count.index]
#   vpc_id = aws_vpc.prod-vpc.id
#   cidr_block = element(var.private_subnet_cidr_blocks,count.index)
#   tags = {
#     Key="Name"
#     Value = "Private-Subnet-${count.index+1}"
#   }
# }