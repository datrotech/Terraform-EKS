# configure aws provider
provider "aws" {
  region  = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "terraform-datro"
    key            = "eks.terraform.tfstate"
    region         = "us-west-1"
    
  }
}
