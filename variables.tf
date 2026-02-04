variable "cloudflare_zone_id" {
  type        = string
  description = "Domain ID registered in Cloudflare dashboard, receive as variable because major upgrades broke and this simplify use"
}

variable "default_ttl" {
  type = string
}

variable "domain" {
  type = string
}

variable "mailgun_dmarc" {
  type    = string
}

variable "mailgun_dkim_key_size" {
  type    = number
  default = 2048
}

variable "mailgun_region" {
  type    = string
  default = "eu"
}

variable "mailgun_smtp_host" {
  type    = string
  default = "smtp.mailgun.org"
}

variable "mailgun_smtp_port" {
  type    = number
  default = 587
}

variable "mailgun_spam_action" {
  type    = string
  default = "disabled"
}

variable "mailgun_username" {
  type    = string
  default = "no-reply"
}

variable "subdomain" {
  type = string
}
