# Simple website serving at naked domain / www. subdomain
module "website" {
  source  = "worldofprasanna/staticwebsite/aws"
  version = "1.0.0"
  domain = var.domain
  s3_force_destroy = "true"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}
