resource "aws_s3_bucket" "example" {
  bucket = "testing-tofu"

  tags = {
    Name        = "tofu testing"
    Environment = "Dev"
  }
}   