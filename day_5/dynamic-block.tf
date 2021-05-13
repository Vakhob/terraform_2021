resource "aws_security_group" "cloud-test" {
  name        = "dynamicsg-test1"
  description = "this is our first dynamic sg"

  dynamic "ingress" {
    for_each = var.ports_for_ingress
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.ports_for_egress
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
