output "bucket" {
  value = module.bucket.bucket_name
}

output "etag" {
  value = [module.bucket.object_etag]
}