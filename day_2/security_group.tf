/*
provider "aws" {
   #  shared_credentials_file = "/Users/tf_user/.aws/credentials"
    #region = "us-east-1"
    access_key = "your_access_key"
    secret_key = "your_secret_key"
}

resource "aws_security_group" "cloud-test" {
    name = "cloud-test1"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.cidr_blocks]
    }

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = [var.cidr_blocks]
    }

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = [var.cidr_blocks]
    }

    egress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = [var.cidr_blocks]
    }    
      
}

*/