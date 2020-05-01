provider "aws" {
  version = "2.60.0"
  profile = "zen-reminder"
  region = "${var.aws_region}"
}
