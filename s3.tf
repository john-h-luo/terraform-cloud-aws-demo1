provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "luotech-terraform-aws-us-east-1"
    key    = "tfbackend.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "luotech-test-s3-bucket" {
  bucket = "luotech-test-s3-bucket"
  tags = {
    Environment = "test"
  }
}