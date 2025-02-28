variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the EKS cluster will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs where the EKS cluster will be deployed"
  type        = list(string)
}

variable "instance_types" {
  description = "The instance types for the EKS managed node groups"
  type        = list(string)
}

variable "ami_id" {
  description = "The AMI ID for the EKS managed node groups"
  type        = string
}

variable "min_capacity" {
  description = "The minimum size of the EKS managed node groups"
  type        = number
}

variable "max_capacity" {
  description = "The maximum size of the EKS managed node groups"
  type        = number
}

variable "desired_size" {
  description = "The desired size of the EKS managed node groups"
  type        = number
}

variable "env" {
  description = "The environment tag for the EKS cluster"
  type        = string
}