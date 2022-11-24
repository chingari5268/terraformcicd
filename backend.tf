terraform {
  backend "s3" {
# Replace this with your bucket name!
    bucket = "myterraformstate07"
    key = "prod/aws_infra"
    region = "us-east-1"
# Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-locks"
    encrypt = true
  }
}
