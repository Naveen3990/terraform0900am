provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myserver" {
  ami                    = "ami-0521cb2d60cfbb1a6"
  instance_type          = "t3.micro"
  subnet_id              = "subnet-0761208b3085d34c2"
  vpc_security_group_ids = ["sg-05f9ce0a7c794d0c0"]

  tags = {
    Name = "ec2-1"
  }
}