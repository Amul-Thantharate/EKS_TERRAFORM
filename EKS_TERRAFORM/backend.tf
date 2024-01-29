terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-12" # Replace with your actual S3 bucket name
    key    = "Hotstar/terraform.tfstate" # Replace with your actual S3 key name
    region = "ap-northeast-1" # Replace with your S3 bucket region
    dynamodb_table = "terraform-state-lock" # Replace with your actual DynamoDB table name
  }
}
