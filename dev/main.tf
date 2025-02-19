module "instance" {
  source = "../modules" # Path to your module repository

  ami_id        = "ami-053a45fff0a704a47"
  instance_type = "t2.medium"
  instance_name = "myinstancetrail"
  bucket_name   = "backupinstacefiles"
  env           = "dev"
  username      = "pramod"
}