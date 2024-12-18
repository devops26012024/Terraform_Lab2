terraform {
  backend "s3" {
    bucket         = "terraform-training-196"
    key            = "storage/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "storage" {
  bucket = "Pradeep-training-123322"
  tags = {
    Name = "storage-bucket"
  }
}
