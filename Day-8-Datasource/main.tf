
data "aws_subnet" "selected" {
    filter {
        name   = "tag:Name"
        values = ["subnet-1"] #fetch the subnet with the tag Name=subnet-1
    }
}
data "aws_security_group" "selected" {
    filter {
        name   = "tag:Name"
        values = ["my-security-group"] #fetch the security group with the tag Name=my-security-group
    }
}

resource "aws_instance" "name" {
    ami           = data.aws_ami.amzlinux-backend.id
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.selected.id #use the id of the fetched subnet
    vpc_security_group_ids = [data.aws_security_group.selected.id] #use the id of the fetched security group
    tags = {
        Name = "my-ec2-instance"
    }
  
}

data "aws_ami" "amzlinux-backend" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
             filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
        filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}