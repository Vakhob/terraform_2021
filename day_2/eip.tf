/*
provider "aws" {
    region = "us-east-1"
    access_key = "your_access_key"
    secret_key = "your_secret_key"
}

resource "aws_eip" "firsteip" {
    vpc = true
}
resource "aws_instance" "mysecondec2" {
    ami = "ami-048f6ed62451373d9"
    instance_type = "t2.micro"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.mysecondec2.id
  allocation_id = aws_eip.firsteip.id
}

resource "aws_security_group" "mysg1" {
    name = "cloud-class-2021"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["${aws_eip.firsteip.public_ip}/32"]
    }
}
*/