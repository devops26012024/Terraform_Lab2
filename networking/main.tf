terraform {
  backend "s3" {
    bucket         = "terraform-training-196"
    key            = "networking/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform_demo"
  }
} 

provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "networking" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "networking-vpc"
  }
}
