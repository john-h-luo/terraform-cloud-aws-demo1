provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "luotech-terraform-aws-us-west-2"
    key    = "tfbackend.tfstate"
    region = "us-west-2"
  }
}

resource "aws_s3_bucket" "luotech-test-s3-bucket" {
  bucket = "luotech-test-s3-bucket"
  tags = {
    Environment = "test"
  }
}