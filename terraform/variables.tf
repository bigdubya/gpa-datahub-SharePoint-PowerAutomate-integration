# global vars
variable "region" {
  type        = string
  default     = "eu-west-2"
  description = "AWS Region the S3 bucket should reside in"
}

# s3 vars
variable "s3_bucket_test_bucket_name" {
  description = "Name for the S3 bucket"
  type        = string
}
