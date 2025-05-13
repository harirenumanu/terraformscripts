module "networking" {
  source     = "./modules/networking"
  cidr_block = var.cidr_block
}

module "iamroles" {
  source              = "./modules/iamroles"
  managed_policy_arns = var.managed_policy_arns
  trusted_policy      = var.trusted_policy
}

module "eks" {
  source       = "./modules/Eks-cluster"
  subnet_ids   = module.networking.public-subnets
  cluster-role = module.iamroles.cluster-role-arn
}
module "eks-node-group"{
  source = "./modules/Eks-worker-node"
  clustername = module.eks.cluster-name
  node_role_arn = module.iamroles.worker-node-role-arn
  subnet_ids = module.networking.public-subnets
  node_group_name = var.node_group_name
}
# module "eks-addons" {
#   source = "./modules/Eks-addons"
#   cluster_name = module.eks.cluster-name
# }
