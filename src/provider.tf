terraform {

  backend "s3" {
    bucket = "techlanches-terraform"
    key    = "techlanches-infra-db/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.regionDefault
}
