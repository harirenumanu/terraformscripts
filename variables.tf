variable "cidr_block" {
  type        = string
  description = "Enter the value of vpc cidr range..."
  default     = "30.0.0.0/26"
}

variable "public_cidr_blocks" {
  type    = list(string)
  default = ["30.0.1.0/24", "30.0.2.0/24"]
}

variable "private_subnet_cidr_blocks" {
  type    = list(string)
  default = ["30.0.3.0/24", "30.0.4.0/24"]
}
variable "node_group_name" {
  type        = string
  description = "the name of the node group ..."
  default     = "Eks-node-group"
}

# variable "subnet_ids" {
#   type = list(string)
# }
# variable "cluster-role" {
#   type = string
# }


#iam role configuration....
variable "managed_policy_arns" {
  type        = list(string)
  description = "perimissions to add to the cluster..."
  default     = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
}

variable "trusted_policy" {
  type        = string
  description = "Assumed policy for eks cluster..."
  default     = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "eks.amazonaws.com"
        ]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOT
}