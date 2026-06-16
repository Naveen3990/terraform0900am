provider "aws" {
  region = "us-east-1"
}

module "web_server" {
  source = "./modules/ec2"

  instance_name = "my-web-server"
  ami_id         = "ami-0f58b397bc5c1f2e8" # Example AMI
  instance_type  = "t2.micro"
}