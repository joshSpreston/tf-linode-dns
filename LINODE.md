# Linode Objects


## Linodes (as of 2021-09-18)

| id | label | region | type | image | status | ipv4 |
|---|---|---|---|---|---|---|
| 17576 | linode-legacy-git | us-west | g6-standard-2 | linode/centos6.8 | running | 173.230.154.98, 192.168.215.109 |
| 12760071 | linode-centos-1 | us-west | g6-standard-1 | linode/centos7 | running | 45.79.65.147, 192.168.140.222 |

How to reproduce:
```
$ linode-cli linodes list --markdown
```

## Instance Types


| id | label | class | disk | memory | vcpus | network_out | transfer | hourly | monthly | gpus |
|---|---|---|---|---|---|---|---|---|---|---|
| g6-nanode-1 | Nanode 1GB | nanode | 25600 | 1024 | 1 | 1000 | 1000 | 0.0075 | 5.0 | 0 |
| g6-standard-1 | Linode 2GB | standard | 51200 | 2048 | 1 | 2000 | 2000 | 0.015 | 10.0 | 0 |
| g6-standard-2 | Linode 4GB | standard | 81920 | 4096 | 2 | 4000 | 4000 | 0.03 | 20.0 | 0 |
| g6-standard-4 | Linode 8GB | standard | 163840 | 8192 | 4 | 5000 | 5000 | 0.06 | 40.0 | 0 |
| g6-standard-6 | Linode 16GB | standard | 327680 | 16384 | 6 | 6000 | 8000 | 0.12 | 80.0 | 0 |
| g6-standard-8 | Linode 32GB | standard | 655360 | 32768 | 8 | 7000 | 16000 | 0.24 | 160.0 | 0 |
| g6-standard-16 | Linode 64GB | standard | 1310720 | 65536 | 16 | 9000 | 20000 | 0.48 | 320.0 | 0 |
| g6-standard-20 | Linode 96GB | standard | 1966080 | 98304 | 20 | 10000 | 20000 | 0.72 | 480.0 | 0 |
| g6-standard-24 | Linode 128GB | standard | 2621440 | 131072 | 24 | 11000 | 20000 | 0.96 | 640.0 | 0 |
| g6-standard-32 | Linode 192GB | standard | 3932160 | 196608 | 32 | 12000 | 20000 | 1.44 | 960.0 | 0 |
| g7-highmem-1 | Linode 24GB | highmem | 20480 | 24576 | 2 | 5000 | 5000 | 0.09 | 60.0 | 0 |
| g7-highmem-2 | Linode 48GB | highmem | 40960 | 49152 | 2 | 6000 | 6000 | 0.18 | 120.0 | 0 |
| g7-highmem-4 | Linode 90GB | highmem | 92160 | 92160 | 4 | 7000 | 7000 | 0.36 | 240.0 | 0 |
| g7-highmem-8 | Linode 150GB | highmem | 204800 | 153600 | 8 | 8000 | 8000 | 0.72 | 480.0 | 0 |
| g7-highmem-16 | Linode 300GB | highmem | 348160 | 307200 | 16 | 9000 | 9000 | 1.44 | 960.0 | 0 |
| g6-dedicated-2 | Dedicated 4GB | dedicated | 81920 | 4096 | 2 | 4000 | 4000 | 0.045 | 30.0 | 0 |
| g6-dedicated-4 | Dedicated 8GB | dedicated | 163840 | 8192 | 4 | 5000 | 5000 | 0.09 | 60.0 | 0 |
| g6-dedicated-8 | Dedicated 16GB | dedicated | 327680 | 16384 | 8 | 6000 | 6000 | 0.18 | 120.0 | 0 |
| g6-dedicated-16 | Dedicated 32GB | dedicated | 655360 | 32768 | 16 | 7000 | 7000 | 0.36 | 240.0 | 0 |
| g6-dedicated-32 | Dedicated 64GB | dedicated | 1310720 | 65536 | 32 | 8000 | 8000 | 0.72 | 480.0 | 0 |
| g6-dedicated-48 | Dedicated 96GB | dedicated | 1966080 | 98304 | 48 | 9000 | 9000 | 1.08 | 720.0 | 0 |
| g6-dedicated-50 | Dedicated 128GB | dedicated | 2560000 | 131072 | 50 | 10000 | 10000 | 1.44 | 960.0 | 0 |
| g6-dedicated-56 | Dedicated 256GB | dedicated | 5120000 | 262144 | 56 | 11000 | 11000 | 2.88 | 1920.0 | 0 |
| g6-dedicated-64 | Dedicated 512GB | dedicated | 7372800 | 524288 | 64 | 12000 | 12000 | 5.76 | 3840.0 | 0 |
| g1-gpu-rtx6000-1 | Dedicated 32GB + RTX6000 GPU x1 | gpu | 655360 | 32768 | 8 | 10000 | 16000 | 1.5 | 1000.0 | 1 |
| g1-gpu-rtx6000-2 | Dedicated 64GB + RTX6000 GPU x2 | gpu | 1310720 | 65536 | 16 | 10000 | 20000 | 3.0 | 2000.0 | 2 |
| g1-gpu-rtx6000-3 | Dedicated 96GB + RTX6000 GPU x3 | gpu | 1966080 | 98304 | 20 | 10000 | 20000 | 4.5 | 3000.0 | 3 |
| g1-gpu-rtx6000-4 | Dedicated 128GB + RTX6000 GPU x4 | gpu | 2621440 | 131072 | 24 | 10000 | 20000 | 6.0 | 4000.0 | 4 |

How to reproduce:
```
$ linode-cli linodes types --markdown
```

## Image Types

| id | label | vendor | description | is_public | size | status |
|---|---|---|---|---|---|---|
| linode/almalinux8 | AlmaLinux 8 | AlmaLinux |  | True | 1700 | available |
| linode/alpine3.10 | Alpine 3.10 | Alpine |  | True | 300 | available |
| linode/alpine3.11 | Alpine 3.11 | Alpine |  | True | 300 | available |
| linode/alpine3.12 | Alpine 3.12 | Alpine |  | True | 300 | available |
| linode/alpine3.13 | Alpine 3.13 | Alpine |  | True | 300 | available |
| linode/alpine3.14 | Alpine 3.14 | Alpine |  | True | 400 | available |
| linode/arch | Arch Linux | Arch |  | True | 2000 | available |
| linode/centos7 | CentOS 7 | CentOS |  | True | 2800 | available |
| linode/centos8 | CentOS 8 | CentOS |  | True | 2300 | available |
| linode/centos-stream8 | CentOS Stream 8 | CentOS |  | True | 2600 | available |
| linode/debian10 | Debian 10 | Debian |  | True | 1500 | available |
| linode/debian11 | Debian 11 | Debian |  | True | 1300 | available |
| linode/debian9 | Debian 9 | Debian |  | True | 1600 | available |
| linode/fedora32 | Fedora 32 | Fedora |  | True | 2800 | available |
| linode/fedora33 | Fedora 33 | Fedora |  | True | 2600 | available |
| linode/fedora34 | Fedora 34 | Fedora |  | True | 1800 | available |
| linode/gentoo | Gentoo | Gentoo |  | True | 4600 | available |
| linode/debian9-kube-v1.19.11 | Kubernetes 1.19.11 on Debian 9 | Debian |  | True | 3500 | available |
| linode/debian9-kube-v1.20.7 | Kubernetes 1.20.7 on Debian 9 | Debian |  | True | 3500 | available |
| linode/debian9-kube-v1.21.1 | Kubernetes 1.21.1 on Debian 9 | Debian |  | True | 3500 | available |
| linode/opensuse15.2 | openSUSE Leap 15.2 | openSUSE |  | True | 1550 | available |
| linode/opensuse15.3 | openSUSE Leap 15.3 | openSUSE |  | True | 1550 | available |
| linode/rocky8 | Rocky Linux 8 | Rocky |  | True | 2300 | available |
| linode/slackware14.2 | Slackware 14.2 | Slackware |  | True | 6000 | available |
| linode/ubuntu16.04lts | Ubuntu 16.04 LTS | Ubuntu |  | True | 2700 | available |
| linode/ubuntu18.04 | Ubuntu 18.04 LTS | Ubuntu |  | True | 2700 | available |
| linode/ubuntu20.04 | Ubuntu 20.04 LTS | Ubuntu |  | True | 2000 | available |
| linode/ubuntu20.10 | Ubuntu 20.10 | Ubuntu |  | True | 3000 | available |
| linode/ubuntu21.04 | Ubuntu 21.04 | Ubuntu |  | True | 3500 | available |
| linode/alpine3.9 | Alpine 3.9 | Alpine |  | True | 300 | available |
| linode/centos6.8 | CentOS 6.8 | CentOS |  | True | 1024 | available |
| linode/debian8 | Debian 8 | Debian |  | True | 1300 | available |
| linode/fedora31 | Fedora 31 | Fedora |  | True | 2500 | available |
| linode/opensuse15.1 | openSUSE Leap 15.1 | openSUSE |  | True | 3600 | available |
| linode/slackware14.1 | Slackware 14.1 | Slackware |  | True | 1000 | available |

How to reproduce:
```
$ linode-cli images list --markdown
```

---
## Regions

| id | country | capabilities | status |
|---|---|---|---|
| ap-west | in | Linodes, NodeBalancers, Block Storage, GPU Linodes, Kubernetes, Cloud Firewall, Vlans | ok |
| ca-central | ca | Linodes, NodeBalancers, Block Storage, Kubernetes, Cloud Firewall, Vlans | ok |
| ap-southeast | au | Linodes, NodeBalancers, Block Storage, Kubernetes, Cloud Firewall, Vlans | ok |
| us-central | us | Linodes, NodeBalancers, Block Storage, Kubernetes, Cloud Firewall | ok |
| us-west | us | Linodes, NodeBalancers, Block Storage, Kubernetes, Cloud Firewall | ok |
| us-southeast | us | Linodes, NodeBalancers, Block Storage, Object Storage, Cloud Firewall, Vlans | ok |
| us-east | us | Linodes, NodeBalancers, Block Storage, Object Storage, GPU Linodes, Kubernetes, Cloud Firewall, Bare Metal | ok |
| eu-west | uk | Linodes, NodeBalancers, Block Storage, Kubernetes, Cloud Firewall | ok |
| ap-south | sg | Linodes, NodeBalancers, Block Storage, Object Storage, GPU Linodes, Kubernetes, Cloud Firewall | ok |
| eu-central | de | Linodes, NodeBalancers, Block Storage, Object Storage, GPU Linodes, Kubernetes, Cloud Firewall | ok |
| ap-northeast | jp | Linodes, NodeBalancers, Block Storage, Kubernetes, Cloud Firewall | ok |

How to reporduce:
```
$ linode-cli regions list --markdown
```

---

