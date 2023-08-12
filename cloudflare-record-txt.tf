resource "cloudflare_record" "spf" {
  zone_id = var.zone_id
  name    = var.subdomain
  value   = "v=spf1 include:mailgun.org ~all"
  type    = "TXT"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_record" "dkim" {
  zone_id = var.zone_id
  name    = "smtp._domainkey.${var.subdomain}"
  value   = var.dkim_value
  type    = "TXT"
  ttl     = 3600
  proxied = false
}
