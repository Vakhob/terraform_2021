provider "aws" {
  alias = "virginia"
  region                  = "us-east-1"
  shared_credentials_file = "/home/ec2-user/.aws/credentials"
  profile                 = "default"
}
provider "aws" {
 
  region                  = "us-east-1"
  shared_credentials_file = "/home/ec2-user/.aws/credentials"
  profile                 = "default"
}
