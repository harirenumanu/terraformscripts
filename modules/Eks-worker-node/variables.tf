variable "clustername" {
  type = string
  description = "The name of the cluster..."
}
variable "node_role_arn" {
  type = string
  description = "the role of a worker node group...."
}
variable "subnet_ids" {
  type = list(string)
  description = "the subnets for worker node group..."
}
variable "node_group_name" {
  type = string
  description = "the name of the node group name ....."
}



