variable "linode_api_token" {}

# container instances
variable "container_host_count" {
  default	= 0
}

variable "container_host_type" {
  default	= "g6-standard-1"
}

variable "container_host_prefix" {
  default	= "linode-container"
}

variable "container_host_region" {
  default	= "us-west"
}

variable "container_host_private_ip" {
  default	= true
}

variable "container_host_image" {
  default	= "linode/centos7"
}

variable "container_host_group" {
  default	= "testing"
}

variable "container_host_authorized_keys" {
  default	= [
    "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAIEA+NAatW7Fn47StI5JjSGmiA9Rje910v+ZftAlY+djkdk9ZeCgM6JjqJQA7gtYIgCv7BA4qADNBWbmbA3jtT6fWEuxpppvmtfXT7kqWDkUeOBawtq0i5YJTo7WszY2N5DLjoaGdyB/aMIAOnJyfBzrCY/iYq7bzF0isCJnAjID6Cs=",
    "ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAEX+XstpIlrgBTH96BvkiQF6tY6rQP0cWnzyOugB5KF/PtUM51c6x15xCaMIOw1PmjUVguNPxDrnUPdbYth/e3yDABvJPEKosYucRGkzGemfv0CptzYCEUUEm2WeKr8U1y1AL2gNqbhfXUAA1CbirMGo2PLo9pItLHOZeIKYrSxQU5Kjw==",
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBBLYb2B4Kj/eioevUM1lqis/vpamjGOc77pfMVzEo79gslrfvfkhE40ESRHkoG+B35Z0lv8P/9fyHX7zw7Swnwk="
  ]
}

variable "container_host_root_password" {
  type = string
}



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


