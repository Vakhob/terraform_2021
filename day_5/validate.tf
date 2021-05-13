provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/home/ec2-user/.aws/credentials"
  profile                 = "default"
}

resource "aws_instance" "myec2" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t2.micro"
}

