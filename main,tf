


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
}



terraform {
  cloud {
    organization = "Thrinkshive"

    workspaces {
      name = "crc-backend"
    }
  }
}



resource "aws_s3_bucket" "banks" {
  bucket = "keenson-bk-mnaknew2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.banks.id
  acl    = "private"
}

