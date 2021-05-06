/*
provider "aws" {
    region = "us-east-1"
    access_key = "your_access_key"
    secret_key = "your_secret_key"
}

resource "aws_eip" "myeip" {
    vpc = true
}

output "eip" {
    value = aws_eip.myeip.private_ip
}

resource "aws_s3_bucket" "mybucket" {
    bucket = "cloud-class-2021"
}

output "s3" {
    value = aws_s3_bucket.mybucket.region
}
output "s33" {
    value = aws_s3_bucket.mybucket.id
}
*/
