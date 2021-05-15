resource "aws_instance" "myec4" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t2.micro"
  key_name = "mydefaultkeypair"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("./mydefaultkeypair.pem")
    host = self.public_ip
  }
  }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

     ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port = 0
      to_port = 65535
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
}