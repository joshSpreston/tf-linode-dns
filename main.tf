
terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"

    # I would like to leverage these providers as well:
    #   - gitlab: to create the various gitlab pats.  probably a whole nother workspace and plan 

    }
  }

  backend "http" {
    address        = "https://git.joshpreston.net/api/v4/projects/112/terraform/state/terraform-linode"
    lock_address   = "https://git.joshpreston.net/api/v4/projects/112/terraform/state/terraform-linode/lock"
    unlock_address = "https://git.joshpreston.net/api/v4/projects/112/terraform/state/terraform-linode/lock"
    lock_method    = "POST"
    unlock_method  = "DELETE"
    retry_wait_min = 5
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

resource "linode_instance" "container_host" {
  count 		= "${var.container_host_count}"
  label			= "${var.container_host_prefix}-node-${count.index +1}"

  region		= "${var.container_host_region}"

  image			= "${var.container_host_image}"
  group			= "${var.container_host_group}"
  type			= "${var.container_host_type}"
  authorized_keys	= "${var.container_host_authorized_keys}"
  root_pass		= "${var.container_host_root_password}"
}
