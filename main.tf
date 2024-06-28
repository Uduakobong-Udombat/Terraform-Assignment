

provider "aws" {
  region = "us-east-1"
}

variable "s3_bucket_regional_domain_name" {
  type = string
}

variable "s3_bucket_arn" {
  type = string
}

module "s3_bucket" {
  source = "./modules/s3"
  domain_name = "uduakudombat"
}

module "s3_object" {
  source = "./modules/s3_object"
}

module "cloudfront" {
  source                         = "./modules/cloudfront"
  s3_bucket_regional_domain_name = var.s3_bucket_regional_domain_name
  s3_bucket_arn                  = var.s3_bucket_arn
  s3-bucket                      = var.s3_bucket.id
  certificate_arn = var.cloudfront_certificate_arn
}

