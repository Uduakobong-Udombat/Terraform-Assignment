variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
  default = "uduakudombat"
}

variable "domain_name" {
  description = "The domain name for the website."
  type        = string
}

variable "region" {
  description = "The AWS region."
  type        = string
  default = "eu-north-1"
}