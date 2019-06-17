provider "aws" {
  region  = "eu-west-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket         = "colm-prunty-terraform-state"
    key            = "tfdemo-dev-terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-management"
    profile        = "default"
  }
}

module "demo-server"{
    source = "../../demo-server"
    instance_tag = "${var.instance_tag}"
}

module "demo-bucket"{
    source = "../../s3"
    bucket_name = "${var.bucket_name}"
}

variable "instance_tag" { }
variable "bucket_name" {}