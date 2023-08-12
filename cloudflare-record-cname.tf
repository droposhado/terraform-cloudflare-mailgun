resource "cloudflare_record" "tracking_url" {
  zone_id = var.zone_id
  name    = "email.${var.subdomain}"
  value   = "mailgun.org"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

