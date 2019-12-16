terraform {
  required_version = ">=0.12"
  backend "s3" {
    key    = "starterkit-inf"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  version = "~> 2.42"
  region = "ap-northeast-1"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = local.workspace["vpc_cidr"]
  tags = local.tags
}
