resource "aws_s3_bucket" "main" {
  bucket   = var.bucket_name
  acl      = "private"
  policy   = data.aws_iam_policy_document.bucket_policy.json

  website {
    index_document = var.index_document
    error_document = var.error_document
  }

  force_destroy = var.s3_force_destroy

  tags = {
    "Name" = var.bucket_name
  }
}

data "aws_iam_policy_document" "bucket_policy" {
  statement {
    sid = "AllowReadFromAll"

    actions = [
      "s3:GetObject",
    ]

    resources = [
      "arn:aws:s3:::${var.bucket_name}/*",
    ]

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}
