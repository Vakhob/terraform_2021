/*
provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/ec2-user/.aws/credentials"
    profile = "default"
}

locals {
  default_tags = {
    Name = "Vakhob"
    Owner = "Avazov"
    Group = "Cloud_13"
    Team = "backend"
  }
}

resource "aws_instance" "myec2" {
    ami = "ami-048f6ed62451373d9"
    instance_type = "t2.micro"
    tags = local.default_tags
}

resource "aws_ebs_volume" "myebs" {
    availability_zone = "us-east-1b"
    size = 8
    tags = local.default_tags
}
*/