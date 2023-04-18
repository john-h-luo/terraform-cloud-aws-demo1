provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "test-s3-bucket-6785" {
  bucket = "luotech-test-s3-bucket"
  tags = {
    Environment = "test"
  }
}