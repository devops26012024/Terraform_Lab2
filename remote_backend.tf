terraform {
  backend "s3" {
    bucket         = "terraform-training-196"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform_demo"  
  }
}
