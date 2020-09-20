variable "aws_region" {
    type = string
    description = "describe default region to create a resource from aws"
    default = "us-east-1"
}

variable "aws_credentials_file" {
    type = string
    description = "describe a path to locate a credentials from access aws cli"
    default = "$HOME/.aws/credentials"
}

variable "aws_profile" {
    type = string
    description = "describe a specifc profile to access a aws cli"
    default = "terraform"
}

variable "my_bucket_tags" {
    type = map(string)
    description = "describe a tags from a new aws s3 bucket"
    default = {
        Name = "My First Resource Created by Terraforms"
        Environment = "Dev"
    }
}