
resource "aws_instance" "myec2" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t2.micro"
}

resource "aws_instance" "myec5" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t2.micro"
}

resource "aws_instance" "myec3" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t2.micro"
}
