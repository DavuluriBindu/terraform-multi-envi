terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.4.0"
    }
  }

  backend "s3" {
    bucket = "devops84-remote-state"
    key    = "remote-state"
    region = "us-east-1"
    encrypt = true 
    use_lockfile = true 
  }
}

# Configure the AWS Provider
provider "aws" {
  # region = "us-east-1"
}
