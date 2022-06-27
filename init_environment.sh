#!/bin/bash

export BW_SESSION=$(bw unlock --raw)

export GITHUB_TOKEN=$(bw get password github-pat-personal-terraform)
export LINODE_TOKEN=$(bw get password linode-pat-tf-deploy)
