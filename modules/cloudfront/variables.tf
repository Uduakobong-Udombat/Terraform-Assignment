variable "s3-bucket" {
  description = "The name of the S3 bucket"
  type        = string  
  default = "uduakudombat"
}
variable "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  type        = string
}

variable "s3_bucket_regional_domain_name" {
  description = "The regional domain name of the S3 bucket"
  type        = string
}
variable "certificate_arn" {}