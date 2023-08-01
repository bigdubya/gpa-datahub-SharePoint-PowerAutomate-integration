resource "aws_s3_bucket" "test_bucket" {
  bucket = var.s3_bucket_test_bucket_name
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      bucket_key_enabled = false

      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}