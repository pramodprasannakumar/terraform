provider "aws" {
  region = "us-east-1"
  access_key = "AKIAYS2NSBUEVVBTIOSN"
  secret_key = "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"
}

resource "aws_instance" "firstweb" {
  ami           = "ami-053a45fff0a704a47"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
