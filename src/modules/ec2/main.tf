resource "aws_instance" "web" {
  ami           = var.aws_instance_ami
  instance_type = var.aws_instance_type
  tags          = var.aws_instance_tags
}