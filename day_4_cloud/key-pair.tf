/*
provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/ec2-user/.aws/credentials"
    profile = "default"
}

resource "aws_key_pair" "my_key" {
    key_name = "cloud_13"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCo6zmzb4YXcZKYmLWY02duXAwENUHYdB92VTV/Pj/NsqaYEBkDVAzJ/lQt4e2Il1FDhM1ZpbRS0Zr/EZxub4XoO3GQaNxi5vU1mCHgApaMkw4RRTerur8P6YJ7tYRLeB46Eet3aGbJVgRT1szEzkz9ipS1G1apjNTG3UDWnUrpYY8jI3LMqwmfeP8jthTT4zYjysbFipBEkxUpc1n2LsLWlcz7LXws4opwr9p2zgvPkNRQ67gqYKolt8RQo6nZGmmP9I2UH766c6XueNvNQIiIZsmU0tZthVU1yms793l6M0rFLN/u3EXjt8lANz2EBOQ8o32ydHsaWcH7fXi3nind mydefaultkeypair"
}

resource "aws_instance" "myec2" {
    ami = "ami-048f6ed62451373d9"
    instance_type = "t2.micro"
    key_name = aws_key_pair.my_key.key_name
}
*/