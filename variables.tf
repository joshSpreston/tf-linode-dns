# # dns / domain
# variable "joshpreston_net_linode_ips" {
#   type = map(object({
#     ip       = string
#   }))
# }
# 
# variable "joshpreston_net_a_records" {
#   type = map(object({
#     hostname = string
#     ip       = string
#   }))
# }
# 
# 
# variable "joshpreston_net_cname_records" {
#   type = map(object({
#     hostname = string
#     alias    = string
#   }))
# }


variable "linode_domains" {
    type = map(object({
        domain_type = string
        domain_name = string
        soa_email   = string
    }))  
}

variable "linode_domain_records" {
    type = map(object({
        domain_name   = string
        record_name   = string 
        record_type   = string 
        record_target = string
    }))  
}