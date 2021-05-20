terraform {
  backend "s3" {
    bucket = "terraform-akbar-123"
    key    = "cloud-2021.tfstate"
    region = "us-east-1"
    profile = "default"
    dynamodb_table = "cloud-2021"
  }
}