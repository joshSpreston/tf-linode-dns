variable "linode_api_token" {}

# dns / domain
variable "joshpreston_net_linode_ips" {
  type = map(object({
    ip       = string
  }))
}

variable "joshpreston_net_a_records" {
  type = map(object({
    hostname = string
    ip       = string
  }))
}


variable "joshpreston_net_cname_records" {
  type = map(object({
    hostname = string
    alias    = string
  }))
}


