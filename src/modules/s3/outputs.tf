output "bucket_name" {
  value = aws_s3_bucket.this.id
}

output "object_etag" {
  value = [aws_s3_bucket_object.obj.*.etag]
}