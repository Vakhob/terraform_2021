provider "aws" {
    region = "us-east-1"
    access_key = "your_access_key"
    secret_key = "your_secret_key"
}

resource "aws_instance" "day3" {
    ami = var.test[0]
    instance_type = var.instance
}

variable "example" {
    type = list
    default = [" t2.micro", "c5.large", "t2.large", "c5.xlarge"]
}
variable "test" {
    type = list
    default =["ami-048f6ed62451373d9", "ami-04468e03c37242e1e", "ami-0cf6f5c8a62fa5da6"]
}

variable "types" {
    type = map
    default = {
        us-east-1 = "ami-048f6ed62451373d9"
        us-west-1 = "ami-04468e03c37242e1e"
        us-west-2 = "ami-0cf6f5c8a62fa5da6"
    }
}
variable "instance" {
    type =number
}
