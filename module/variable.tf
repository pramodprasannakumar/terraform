variable "ami_id" {
  description = "THe ami Id that will be used for creating ec2 instance"
  type = string
}

variable "instance_type" {
    description = " The name of the instance type"
    type = string
    default = "t2.micro"
}

variable "instance_name" {
    description = " The name of the instance"
    type = string
}

variable "bucket_name" {
    description = " The name of the bucket"
    type = string
}

variable "env" {
    description = " The name of the env"
    type = string
}

variable "username" {
    description = " The name of the user"
    type = string
}