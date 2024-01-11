terraform {
  backend "s3" {
    bucket = "sr-aws-test"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "DynamoDbLock"
  }
}
