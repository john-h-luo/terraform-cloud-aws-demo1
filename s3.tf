provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "luotech-test-s3-bucket" {
  bucket = "luotech-test-s3-bucket"
  tags = {
    Environment = "test"
  }
}