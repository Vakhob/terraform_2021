/*
provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/ec2-user/.aws/credentials"
    profile = "prod"
}
variable "iam_user" {
    type = list
    default = ["production", "staging", "testing", "developing", "playing", "mocking"]
}

resource "aws_iam_user" "myiam" {
    name = var.iam_user[count.index]
    path = "/system/"
    count = 10
}
*/



