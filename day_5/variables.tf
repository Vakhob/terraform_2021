variable "iam_user" {
  default = "test"
}


variable "ports_for_ingress" {
  type        = list(number)
  description = "these are inbound rule ports"
  default     = [22, 80]
}

variable "ports_for_egress" {
  type        = list(number)
  description = "these are outbound rule ports"
  default     = [25]
}