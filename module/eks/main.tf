module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  bootstrap_self_managed_addons = false
  cluster_addons = {
    coredns                = {}
    eks-pod-identity-agent = {}
    kube-proxy             = {}
    vpc-cni                = {}
  }
  vpc_id                   = var.vpc_id
  subnet_ids               = var.subnet_ids
  control_plane_subnet_ids = var.subnet_ids
  eks_managed_node_group_defaults = {
    instance_types = var.instance_types
    eks_managed_node_groups = {
      eks_nodes = {
        ami_type       = var.ami_id
        instance_types = var.instance_types

        min_size     = var.min_capacity
        max_size     = var.max_capacity
        desired_size = var.desired_size
      }
    }

    tags = {
      Environment = var.env
      Terraform   = "true"
    }
  }
}