provider "aws" {
  region = "us-west-2" # Change to your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-123" # Change to a unique bucket name
  acl    = "private"
}