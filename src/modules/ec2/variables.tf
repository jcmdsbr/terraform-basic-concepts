variable "aws_instance_ami" {
  type        = string
  description = "Amazon Linux 2 AMI"
  default     = "ami-0c94855ba95c71c99"
}

variable "aws_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_instance_tags" {
  type = map(string)
  default = {
    Name = "Amazon Linux"
    Env  = "Dev"
  }
}