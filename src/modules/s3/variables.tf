
variable "aws_bucket_acl" {
    type = string
    default = "private"
}

variable "aws_bucket_name" {
    type = string
}

variable "aws_bucket_tags" {
    type = map(string)
    description = "describe a tags from a new aws s3 bucket"
    default = {
        Name = "My First Resource Created by Terraforms"
        Environment = "Dev"
    }
}

variable "aws_bucket_create_object" {
    type = bool
}