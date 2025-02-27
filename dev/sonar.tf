module "sonarqube_instance" {
  source             = "/root/terraform/module/sonarqube"
  ami               = "ami-04b4f1a9cf54c11d0"
  instance_type     = "t2.medium"
  key_name         = "zomatokey"
  security_group_id = "sg-068a0e728afa2d952"
  instance_name     = "sonarqube_server"
}
