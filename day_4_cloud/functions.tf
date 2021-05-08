/*
provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/ec2-user/.aws/credentials"
    profile = "default"
}

locals {
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "tags" {
    type = list
    default = ["myfirstec2", "mysecondec2"]
}

variable "region" {
    default = "us-east-1"
}

variable "ami" {
    type = map
    default = {
        "us-east-1" = "ami-048f6ed62451373d9"
        "us-west-1" = "ami-04468e03c37242e1e"
        "us-west-2" = "ami-0cf6f5c8a62fa5da6"
    }
}


resource "aws_key_pair" "my_key" {
    key_name = "cloud_13"
    public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "myec2" {
    ami = lookup(var.ami,"us-east-1", var.region)
    instance_type = "t2.micro"
    key_name = aws_key_pair.my_key.key_name
    count = 2

    tags = {
      "Name" = element(var.tags,count.index)
    }
}
output "my_nachines_time" {
    value = local.time
}
*/