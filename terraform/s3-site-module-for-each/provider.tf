provider "aws" {
  region = local.region
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"
}

terraform {
  required_version = "~> 1.9.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.6.2"
    }
  }
  backend "s3" {
    bucket = "runtothehils-state-delicate-gannet"
    key    = "terraform/s3-site-module-for-each"
    region = "us-east-1"
  }
}
