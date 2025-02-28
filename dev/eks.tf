module "eks" {
  source = "../modules/eks"

  cluster_name    = "eks-cluster"
  cluster_version = "1.31"
  vpc_id          = "vpc-0da81cc0946988e33"
  subnet_ids      = ["subnet-06360934911bb8b90", "subnet-059dd15f3513f32b4", "subnet-0cbe70e562afd3b7b"]
  instance_types  = ["t2.medium"]
  ami_id          = "ami-000ac001d85d66652"
  min_capacity    = 1
  max_capacity    = 3
  desired_size    = 1
  env             = "development"
}