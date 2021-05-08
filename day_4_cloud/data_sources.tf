provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/ec2-user/.aws/credentials"
    profile = "default"
}

data "aws_ami" "myami" {
    most_recent      = true
    owners = ["amazon"]

    filter {
      name = "name"
      values = ["amzn2-ami-hvm*"]
    }
}

resource "aws_instance" "myec2" {
    ami = data.aws_ami.myami.id
    instance_type = "t2.micro"
}