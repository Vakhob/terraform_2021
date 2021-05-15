
/*
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/home/ec2-user/.aws/credentials"
  profile                 = "default"
}

resource "aws_instance" "myec2" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t2.micro"
}

resource "aws_security_group" "cloud-test" {
  name = "cloud-test23"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8090
    to_port     = 8090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
*/