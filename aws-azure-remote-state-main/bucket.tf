resource "aws_s3_bucket" "first_bucket" {
  bucket = "danielgil-remote-state"

  versioning {
    enabled = true
  }
}