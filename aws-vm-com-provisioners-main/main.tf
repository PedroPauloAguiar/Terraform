terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "danielgil-remote-state"
    key    = "aws-vm-provisioners/terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "danielgil"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "danielgil-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "eu-central-1"
  }
}