terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile = "terraform"
}

# Create a private s3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "my-first-resource-created-by-tf-fd2300ce-87a9-44f8-b71a"
  acl    = "private"
  tags = {
    Name        = "My First Resource Created by Terraforms"
    Environment = "Dev"
  }
}

# Create a object in private s3 bucket
resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "helloworld.txt"
  source = "docs/helloworld.txt"
}
