module "jenkins_instance" {
  source             = "/root/terraform/module/jenkins"
  ami               = "ami-04b4f1a9cf54c11d0"  # Add quotes for string values
  instance_type     = "t2.micro"
  key_name         = "zomatokey"
  security_group_id = "sg-068a0e728afa2d952"
  instance_name     = "jenkins_server"
}
