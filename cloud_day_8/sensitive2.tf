locals {
    db_password = {
        admin = "123456"
    }
}

output "db_password" {
    value = local.db_password
    sensitive = true
}