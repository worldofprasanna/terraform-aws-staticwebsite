# Simple website serving at naked domain
module "website" {
  source = "github.com/worldofprasanna/static-site-s3"
  bucket_name = "streakr.club"
  route53_domain = "streakr.club"
}
