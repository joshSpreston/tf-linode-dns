
joshpreston_net_linode_ips = {
  "legacy" = {
    ip       = "173.230.154.98"
  },

  "current" = {
    ip       = "45.79.65.147"
  },

  "home"    = {
    ip       = "104.173.237.115"
  }
}


joshpreston_net_a_records = {

  "root" = {
    hostname = ""
    ip       = "legacy"
  },

  "work" = {
    hostname = "work"
    ip       = "legacy"
  },

  "wiki" = {
    hostname = "wiki"
    ip       = "legacy"
  },

  "home" = {
    hostname = "home"
    ip       = "home"
  },

  "git"  = {
    hostname = "git"
    ip       = "legacy"
  },

}

joshpreston_net_cname_records = {

  "root" = {
    hostname = "*"
    alias    = "joshpreston.net"
  },

  "openid" = {
    hostname = "ctgi3cwph9cdi.openid"
    alias    = "myopenid.net"
  },


  "google_domain" = {
    hostname = "google3ad67fb82162378d"
    alias    = "google.com"
  },

  "webmail" = {
    hostname = "webmail"
    alias    = "ghs.google.com"
  },

  "www" = {
    hostname = "www"
    alias    = "linode-centos-1.joshpreston.net"
  }

}
