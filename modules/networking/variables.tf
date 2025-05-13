variable "cidr_block" {
  type = string
  description = "Enter the value of vpc cidr range..."
  default = "30.0.0.0/26"
}

variable "public_cidr_blocks" {
  type = list(string)
  default = [ "30.0.1.0/24","30.0.2.0/24" ]
}

variable "private_subnet_cidr_blocks" {
  type = list(string)
  default = [ "30.0.3.0/24","30.0.4.0/24" ]
}