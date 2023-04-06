provider "aws" {
  region = "us-east-1"
}

# bucket.

resource "aws_s3_bucket" "bucket_s3" {
  bucket = "my-tf-test-bucket-cicd"

  tags = {
    Name        = "My bucket"
    Environment = "prod"
  }
}
