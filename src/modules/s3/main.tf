
resource "random_id" "bucket" {
  byte_length = 8
}

resource "aws_s3_bucket" "this" {
  bucket = "${var.aws_bucket_name}-${random_id.bucket.hex}"
  acl    = var.aws_bucket_acl
  tags = var.aws_bucket_tags
}

resource "aws_s3_bucket_object" "obj" {
  count = var.aws_bucket_create_object ? 1 : 0
  bucket = aws_s3_bucket.this.id
  key    = "helloworld.txt"
  source = "/home/jcmds/workspaces/terraform-learning/docs/helloworld.txt"
  etag = filemd5("/home/jcmds/workspaces/terraform-learning/docs/helloworld.txt")
}