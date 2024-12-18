terraform {
  backend "s3" {
    bucket         = "terraform-training-196"
    key            = "compute/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "compute" {
  ami           = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"
  tags = {
    Name = "compute-instance"
  }
}
