resource "aws_iam_user" "myiam" {
  name = var.iam_user
  path = "/system/"
}

resource "aws_instance" "myec2" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t2.micro"
}

