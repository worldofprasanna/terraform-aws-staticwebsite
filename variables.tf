variable "bucket_name" {
  type        = string
  description = "The Fully Qualified domain name should be the bucket name"
  default     = ""
}

variable "route53_domain" {
  type        = string
  description = "Route53 hostedzone name"
  default     = ""
}

variable "domain" {
  type        = string
  description = "simple website where route53 hosted zone and bucket name are same. Naked domain"
  default     = ""
}

variable "s3_force_destroy" {
  type        = string
  description = "Destroy the s3 bucket inspite of contents in it."
  default     = "false"
}

variable "index_document" {
  type        = string
  description = "Index page to be used for website. Defaults to index.html"
  default     = "index.html"
}

variable "error_document" {
  type        = string
  description = "Error page to be used for website. Defaults to error.html"
  default     = "error.html"
}

variable "secret_user_agent" {
  type        = string
  description = "secret to authenticate CF requests to s3"
  default     = "SECRET-STRING"
}
