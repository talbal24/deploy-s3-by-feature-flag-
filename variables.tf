variable "create_s3_bucket" {
  description = "Feature flag: whether to create the S3 bucket"
  type        = bool
  default     = false
}

variable "environment" {
  description = "Environment name (non-prod, prod-1, prod-2)"
  type        = string
}

variable "bucket_name_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
  default     = "demo-bank"
}

variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}
