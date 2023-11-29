# PROVIDER
terraform {

  required_version = "~> 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.34"
    }
    template = {
      source  = "hashicorp/template"
      version = "~> 2.2"
    }
  }

  backend "s3" {
    bucket         = "mydeyvin"
    key            = "terraform.tfstate"
    dynamodb_table = "db-deyvin"
    
    region         = "us-east-1"
  }

}

provider "aws" {
  region  = "us-east-1"
}