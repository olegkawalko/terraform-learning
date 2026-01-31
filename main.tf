
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
module "s3"{
  source = "./modules/s3"
  bucket_buck = "backuptypes"
}
module "vpc" {
    source = "./modules/vpc"
    cidr_block_id = "10.0.0.0/16"
}
module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_original_output
  cidr_block_v = "0.0.0.0/0"
  subnet_ids = module.app_network.subnet_list_id
}
module "app_network" {
source = "./modules/app_network"
vpc_id = module.vpc.vpc_original_output
publi_subnet_cidrs = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    ]
azs = [
    "us-east-1a",
    "us-east-1b",
]
name_prefix = "moja-siec"


}
output "subnet1"{

    value=module.app_network.subnet_list_id[0]
}
output "arn1" {
    value=module.app_network.subnet_list_arn[0]
}
