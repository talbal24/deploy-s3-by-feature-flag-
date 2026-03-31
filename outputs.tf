output "bucket_created" {
  description = "Whether the S3 bucket was created"
  value       = var.create_s3_bucket
}

output "bucket_name" {
  description = "Name of the created S3 bucket (empty if not created)"
  value       = var.create_s3_bucket ? aws_s3_bucket.this[0].bucket : "not created"
}
