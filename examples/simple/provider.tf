provider "aws" {
  version = "2.60.0"
  profile = var.aws_profile
  region  = var.aws_region
}
