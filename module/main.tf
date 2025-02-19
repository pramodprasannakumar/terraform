resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "var.instance_name"
  }
}

resource "aws_s3_bucket" "finance" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.env
  }
}

resource "aws_iam_user" "lb" {
  name = var.username

  tags = {
    tag-key = var.username
  }
}