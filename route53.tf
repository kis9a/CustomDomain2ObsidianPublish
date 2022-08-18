resource "aws_route53_record" "service" {
  zone_id = var.route53_host_zone_id
  name    = var.fqdn
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.service.domain_name
    zone_id                = aws_cloudfront_distribution.service.hosted_zone_id
    evaluate_target_health = false
  }
}
