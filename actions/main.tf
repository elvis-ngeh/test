
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "class30"
}

resource "aws_vpc" "actions" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "Name" = "class30"
    }
  
}