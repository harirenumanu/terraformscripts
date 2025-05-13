output "cluster-role-arn" {
  value = aws_iam_role.cluster-role.arn
}
output "worker-node-role-arn" {
  value = aws_iam_role.worker-node-role.arn
}