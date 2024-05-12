data "aws_route53_zone" "zone" {
  name         = "dellabeneta.online"
  private_zone = false
}

resource "aws_route53_record" "raise" {
  zone_id = data.aws_route53_zone.zone.id
  name    = "raise"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.distribution.domain_name
    zone_id                = aws_cloudfront_distribution.distribution.hosted_zone_id
    evaluate_target_health = false
  }
}