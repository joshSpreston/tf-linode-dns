output "ip_addresses" {
    value = "${join(",", linode_instance.container_host.*.ipv4)}"
}
