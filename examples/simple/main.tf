# Simple website serving at naked domain / www. subdomain
module "website" {
  source  = "worldofprasanna/staticwebsite/aws"
  version = "1.0.0"
  domain  = var.domain
}

# AWS Specific variables
variable "aws_region" {
  type        = string
  description = "AWS Region to create the resource"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "AWS Profile to choose"
  default     = "default"
}
