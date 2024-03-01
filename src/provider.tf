terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = ">= 3.0"
    random = ">= 3.0"
  }

  backend "s3" {
    bucket = "techlanches-terraform-db"
    key    = "techlanches-infra-db/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {  
  region = var.regionDefault
}
