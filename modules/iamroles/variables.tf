variable "managed_policy_arns" {
  type = list(string)
  description = "perimissions to add to the cluster..."
  default = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
}

variable "trusted_policy" {
  type = string
    description = "Assumed policy for eks cluster..."
  default = <<EOT
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