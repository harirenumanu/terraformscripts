output "vpc_id" {
  value = aws_vpc.prod-vpc.id
}
output "public-subnets" {
  value = aws_subnet.public-subnet[*].id
}
