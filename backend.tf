terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "terraform-tentech"
    key    = "lesson-8"
  }
}