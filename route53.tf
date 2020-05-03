locals {
  route53_domain = var.route53_domain != "" ? var.route53_domain : var.domain
}

resource "aws_route53_zone" "main" {
  name = "${local.route53_domain}"
}

resource "aws_route53_record" "app" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name    = "${local.bucket_name}"
  type    = "A"

  alias {
    name                   = "${aws_cloudfront_distribution.main.domain_name}"
    zone_id                = "${aws_cloudfront_distribution.main.hosted_zone_id}"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "cert_validation" {
  name    = "${aws_acm_certificate.cert.domain_validation_options.0.resource_record_name}"
  type    = "${aws_acm_certificate.cert.domain_validation_options.0.resource_record_type}"
  zone_id = "${aws_route53_zone.main.id}"
  records = ["${aws_acm_certificate.cert.domain_validation_options.0.resource_record_value}"]
  ttl     = 60
}
