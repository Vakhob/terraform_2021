/*
variable "username"{
    type = string
    sensitive = true
}

variable "db_password"{
    type = string
    sensitive = true
}

resource "aws_db_instance" "mydb" {
  allocated_storage    = 5
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = var.username
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
*/