provider "aws" {
  region  = local.region
}

provider "aws" {
  region  = "us-east-1"
  alias   = "us-east-1"
}

terraform {
  required_version = "~> 1.9.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.6.2"
    }
  }
  backend "s3" {
    bucket = "mojbaketza-state-upward-akita"
    key    = "terraform/s3-site-using-module"
    region = "us-east-1"
  }
}
