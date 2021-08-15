
terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}


provider "linode" {
  # tf-deploy
  token = var.linode_api_token
}

data "linode_domain" "joshpreston_net" {
  domain = "joshpreston.net"
}

# resource "linode_domain" "joshpreston_net" {
#     type = "master"
#     domain = "joshpreston.net"
#     soa_email = "josh@joshpreston.net"
# }


resource "linode_domain_record" "a_records" {
    for_each = var.joshpreston_net_a_records

    domain_id = data.linode_domain.joshpreston_net.id
    name = each.value.hostname
    record_type = "A"
    target = var.joshpreston_net_linode_ips[each.value.ip].ip
}

resource "linode_domain_record" "cname_records" {
    for_each = var.joshpreston_net_cname_records

    domain_id = data.linode_domain.joshpreston_net.id
    name = each.value.hostname
    record_type = "CNAME"
    target = each.value.alias
}

