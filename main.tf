provider "aws" {
  region = "us-east-1"
}

# bucket code.

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-cicd"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
