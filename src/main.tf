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
  region = var.aws_region
  shared_credentials_file = var.aws_credentials_file
  profile = var.aws_profile
}

# Create a private s3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "my-first-resource-created-by-tf-fd2300ce-87a9-44f8-b71a"
  acl    = "private"
  tags = var.my_bucket_tags
}

# Create a object in private s3 bucket
resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "helloworld.txt"
  source = "docs/helloworld.txt"
  etag = filemd5("docs/helloworld.txt")
}

output "bucket" {
    value = aws_s3_bucket.mybucket.id
}

output "etag" {
    value = aws_s3_bucket_object.object.etag
}