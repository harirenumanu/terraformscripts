resource "aws_eks_cluster" "eks-cluster" {
  name = "Eks"
  role_arn = var.cluster-role
  vpc_config {
    subnet_ids = var.subnet_ids
  }
}