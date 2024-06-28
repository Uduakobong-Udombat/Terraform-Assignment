
variable "aws_region" {
  default = "eu-north-1"
}

variable "domain_name" {
  description = "The domain name for the website."
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to host the static website."
  type        = string
}

variable "cloudfront_certificate_arn" {
  description = "The ARN of the SSL certificate for CloudFront."
  type        = string
}



