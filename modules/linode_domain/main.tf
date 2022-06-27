terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

resource "linode_domain" "domain" {
    domain          = var.domain_name
    type            = var.domain_type
    soa_email       = var.soa_email  
}

variable "domain_type" {
    type            = string
    default         = "master"
    description     = "type of domain: master or slave. default = master"  
}

variable "domain_name" {
    type            = string
    description     = "the domain name"  
}

variable "soa_email" {
    type            = string
    description     = "start of authority email address"  
}

output "linode_domain" {
    value           = linode_domain.domain
}