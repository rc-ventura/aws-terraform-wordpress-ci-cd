
terraform {
  cloud {
    organization = "rc-ventura"
    workspaces {
      name = "wordpress_app_us_east_1_DEV"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      App         = var.app_name
      Environment = var.environment
      Terraform   = "True"
    }
  }
}