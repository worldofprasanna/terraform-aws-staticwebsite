locals {
  bucket_name = var.bucket_name != "" ? var.bucket_name : var.domain
}

resource "aws_s3_bucket" "main" {
  bucket = local.bucket_name
  acl    = "private"
  policy = data.aws_iam_policy_document.bucket_policy.json

  website {
    index_document = var.index_document
    error_document = var.error_document
  }

  force_destroy = var.s3_force_destroy

  tags = {
    "Name" = local.bucket_name
  }
}

data "aws_iam_policy_document" "bucket_policy" {
  statement {
    sid = "AllowReadFromAll"

    actions = [
      "s3:GetObject",
    ]

    resources = [
      "arn:aws:s3:::${local.bucket_name}/*",
    ]

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}

# Refactor it to use loop
resource "aws_s3_bucket_object" "index" {
  bucket       = local.bucket_name
  key          = "index.html"
  source       = "initial_files/index.html"
  content_type = "text/html"
}

resource "aws_s3_bucket_object" "error" {
  bucket       = local.bucket_name
  key          = "error.html"
  source       = "initial_files/error.html"
  content_type = "text/html"
}