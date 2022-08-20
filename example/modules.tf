module "customDomain2ObsidianPublish" {
  source               = "github.com/kis9a/CustomDomain2ObsidianPublish"
  fqdn                 = "md.kis9a.com"
  route53_host_zone_id = data.terraform_remote_state.domains.outputs.kis9a_host_zone_id
  ssl_certificate_arn  = data.terraform_remote_state.domains.outputs.sub_kis9a_virginia_ssl_arn
}
