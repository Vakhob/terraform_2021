resource "aws_instance" "imported_ec2" {
    ami = "ami-0d5eff06f840b45e9"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0e2a10716b938574c"]
    key_name = "my_key"
    subnet_id = "subnet-e64a7dab"
    tags {
        Name = Import
    }
}