linode_domains = {
  "joshpreston_net" = {
    domain_name     = "joshpreston.net"
    soa_email       = "josh@joshpreston.net"
    domain_type     = "master"
  },
  "preston_party" = {
    domain_name     = "preston.party"
    soa_email       = "josh@joshpreston.net"
    domain_type     = "master"
  }
}

linode_domain_records = {
  "domain_root" = {
   "domain_name":  "preston.party",
    "record_name": "",
    "record_target": "172.119.194.148",
    "record_type": "A"
  },
  "home" = {
    "domain_name":  "preston.party",
    "record_name": "home",
    "record_target": "76.50.32.20",
    "record_type": "A"
  },
  "homeassistant" = {
    "domain_name":  "preston.party",
    "record_name": "homeassistant",
    "record_target": "76.91.170.6",
    "record_type": "A"
  },
  "lazylibrarian" = {
    "domain_name":  "preston.party",
    "record_name": "lazylibrarian",
    "record_target": "76.91.170.6",
    "record_type": "A"
  },
  "lidarr" = {
    "domain_name":  "preston.party",
    "record_name": "lidarr",
    "record_target": "76.91.170.6",
    "record_type": "A"
  },
  "plex" = {
    "domain_name":  "preston.party",
    "record_name": "plex",
    "record_target": "76.91.170.6",
    "record_type": "A"
  },
  "radarr" = {
    "domain_name":  "preston.party",
    "record_name": "radarr",
    "record_target": "76.91.170.6",
    "record_type": "A"
  },
  "sabnzbd" = {
    "domain_name":  "preston.party",
    "record_name": "sabnzbd",
    "record_target": "76.91.170.6",
    "record_type": "A"
  },
  "sonarr" = {
    "domain_name":  "preston.party",
    "record_name": "sonarr",
    "record_target": "76.91.170.6",
    "record_type": "A"
  },
  "syncthing" = {
    "domain_name":  "preston.party",
    "record_name": "syncthing",
    "record_target": "76.91.170.6",
    "record_type": "A"
  },
  "_acme-challenge" = {
    "domain_name":  "preston.party",
    "record_name": "_acme-challenge",
    "record_target": "bRJeNWLEJwuT2SH2R2VXH6vdeC6zMJ5qRg2Q4vj7q3w",
    "record_type": "TXT"
  },
  "_acme-challenge-2" = {
    "domain_name":  "preston.party",
    "record_name": "_acme-challenge",
    "record_target": "GVvfHrDKPJEE0BryUKFentAEYg2dZ4U0z05DanDNeDc",
    "record_type": "TXT"
  }
}