output "s3_hosted_zone_id" {
  value = aws_s3_bucket.main.hosted_zone_id
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.main.*.domain_name
}

output "cloudfront_hosted_zone" {
  value = aws_cloudfront_distribution.main.*.hosted_zone_id
}

# output "route53_nameservers" {
#   value = aws_route53_zone.dev.name_servers.*
# }
