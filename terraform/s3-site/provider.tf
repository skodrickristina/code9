provider "aws" {
  region = local.region
 default_tags {
   tags = {
     Environment = "Test"
     Owner       = "TFProviders"
     Project     = "Test"
   }
 }

}

provider "aws" {
  region = "eu-west-1"
  alias  = "eu-west-1"
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
    key    = "terraform/s3-site"
    region = "us-east-1"
  }
}
