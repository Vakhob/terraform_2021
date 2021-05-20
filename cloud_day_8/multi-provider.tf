/*
resource "aws_eip" "firsteip" {
    vpc = true
    provider = "aws.virginia"
    
    tags = {
        Name = "test_eip"
    }
}

resource "aws_eip" "firsteip2" {
    vpc = true
    provider = "aws.ohio"

    tags = {
        Name = "test_eip"
    }
}

*/