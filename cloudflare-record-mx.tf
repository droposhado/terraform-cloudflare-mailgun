resource "cloudflare_record" "a10" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "mxa.mailgun.org"
  type     = "MX"
  priority = 10
  ttl      = 3600
  proxied  = false
}

resource "cloudflare_record" "b10" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "mxb.mailgun.org"
  type     = "MX"
  priority = 10
  ttl      = 3600
  proxied  = false
}
