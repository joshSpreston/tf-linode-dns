terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

data "linode_domain" "domain" {
    domain          = var.domain_name
}

resource "linode_domain_record" "domain_record" {
    domain_id       = data.linode_domain.domain.id
    record_type     = var.record_type
    name            = var.record_name
    target          = var.record_target
}

variable "record_name" {
    type            = string
    description     = "the name of the record"  
}

variable "domain_name" {
    type            = string
    description     = "the parent domain"  
}

variable "record_type" {
    type            = string
    description     = "type of domain record: A, CNAME, SRV, TXT, AAAA"
    default         = "A"
}

variable "record_target" {
    type            = string
    description     = "target value for this record"  
}

output "linode_domain_record" {
    value           = linode_domain_record.domain_record
}