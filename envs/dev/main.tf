provider "aws" {
  region = eu-west-2
}

module "eks" {
  source             = "../../modules/eks"
  cluster_name       = "eks-dev"
  cluster_role_arn   = var.cluster_role_arn
  node_role_arn      = var.node_role_arn
  subnet_ids         = var.subnet_ids
  desired_capacity   = 2
  min_size           = 1
  max_size           = 3
  kubernetes_version = "1.29"
}
