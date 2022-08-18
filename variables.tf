variable "service_name" {
  type        = string
  default     = "customOrigin2Obsidian"
  description = "Service name, used resources name prefix"
}

variable "route53_host_zone_id" {
  type        = string
  description = "Custom domain's host zone id in AWS Route53"
}

variable "fqdn" {
  type        = string
  description = "Cusotm domain's fqdn"
}

variable "obsidian_domain_name" {
  type        = string
  default     = "publish.obsidian.md"
  description = "Custom origin name"
}

variable "ssl_certificate_arn" {
  type        = string
  description = "Arn of your custom domain's SSL certificate as configured in AWS ACM"
}
