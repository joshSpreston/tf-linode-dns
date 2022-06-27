
module "linode_domains" {
    source        = "./modules/linode_domain"
    for_each      = var.linode_domains

    domain_type   = each.value.domain_type
    domain_name   = each.value.domain_name
    soa_email     = each.value.soa_email
}

module "linode_domain_records" {
    source        = "./modules/linode_domain_record"
    for_each      = var.linode_domain_records

    domain_name   = each.value.domain_name
    record_name   = each.value.record_name
    record_type   = each.value.record_type
    record_target = each.value.record_target  
}


