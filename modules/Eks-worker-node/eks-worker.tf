resource "aws_eks_node_group" "eks-node-group" {
  cluster_name = var.clustername
  node_role_arn = var.node_role_arn
  subnet_ids = var.subnet_ids
  scaling_config {
    desired_size = 1
    max_size = 2
    min_size = 1
  }
  node_group_name = var.node_group_name

}