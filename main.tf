terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "this" {
  count  = var.create_s3_bucket ? 1 : 0
  bucket = "${var.bucket_name_prefix}-${var.environment}"

  tags = {
    Environment = var.environment
    ManagedBy   = "env0"
  }
}

resource "aws_s3_bucket_versioning" "this" {
  count  = var.create_s3_bucket ? 1 : 0
  bucket = aws_s3_bucket.this[0].id

  versioning_configuration {
    status = "Enabled"
  }
}
