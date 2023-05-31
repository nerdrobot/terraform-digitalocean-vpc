resource "digitalocean_vpc" "default" {
  count       = var.enable_vpc == true ? 1 : 0
  name        = var.name
  region      = coalesce(local.region[var.region], var.region)
  description = var.description
  ip_range    = var.ip_range
}