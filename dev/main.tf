provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "firstweb" {
  ami           = "ami-053a45fff0a704a47"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
