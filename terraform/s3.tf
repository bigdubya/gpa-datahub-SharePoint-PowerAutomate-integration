###########################################################
# AWS S3 bucket GPA Landing
###########################################################
resource "aws_s3_bucket" "gpa_landing" {
  bucket = var.gpa_landing_bucket_name
}

resource "aws_s3_bucket_acl" "gpa_landing" {
  bucket = aws_s3_bucket.gpa_landing.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "gpa_landing" {
  bucket = aws_s3_bucket.gpa_landing.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "gpa_landing" {
  bucket = aws_s3_bucket.gpa_landing.id

  rule {
    bucket_key_enabled = false

    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}