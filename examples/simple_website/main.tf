# Simple website serving at naked domain / www. subdomain
module "website" {
  source = "github.com/worldofprasanna/terraform-aws-staticwebsite"
  bucket_name = "streakr.club"
  route53_domain = "streakr.club"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}
