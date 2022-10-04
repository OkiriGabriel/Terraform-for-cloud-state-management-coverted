terraform {
  backend "s3" {
    bucket = "lambda-buck13e"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}