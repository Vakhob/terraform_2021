/*
terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "3.38"
      }
  }
}
provider "aws" {
    region = "us-east-1"
    access_key = "your_access_key"
    secret_key = "your_secret_key"
}

resource "aws_instance" "myec2" {
    ami = "ami-048f6ed62451373d9"
    instance_type = "t2.micro"
}
*/