resource "aws_iam_role" "cluster-role" {
  assume_role_policy = var.trusted_policy
  managed_policy_arns = var.managed_policy_arns
  tags = {
    Key = "Name"
    Value = "Eks-cluster-role"
  }
}