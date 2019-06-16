provider "aws" {
  region  = "eu-west-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket         = "colm-prunty-terraform-state"
    key            = "tfdemo-terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-management"
    profile        = "default"
  }
}