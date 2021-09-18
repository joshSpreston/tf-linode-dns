# Linode Core

## Notes

- installed gitlab runner to workstation via `yay`


## Goals

Commit all Linode infrastructure to TF.

## What's What?

This repo contains the TF that managed the core linode infrastrucutre.  It uses a IaC approach, leveraging gitlab's CI/CD utility to automate deployment.

To facilitate the automated TF runs, I installed a localized gitlab runner via `yay` that is registered to this project explicitly.
See [gitlab admin - runners](https://git.joshpreston.net/admin/runners)

The [.gitlab-ci.yml](https://git.joshpreston.net/terraform/linode-core/-/blob/main/.gitlab-ci.yml) defines the stages of the [Pipeline](https://git.joshpreston.net/terraform/linode-core/-/pipelines).  In summary, the job submitted to the pipline will pull the latest hashicorp terraform docker image to the runner, install `jq`, setup a local disk cache, run `terraform init`, then `terraform validate`, followed by a `terraform plan` that dispenses the plan file to disk on the cached layer as an artifact.  Finally `terraform apply` is run providing the previous plan file.  All of the console output is captured in gitlab.

To provoke a job run, you need to merge into one of the branches, either `main` or `dev`.  This is due to the lack of rules applied in the `.gitlab-ci.yml` file.  I **need** to rectify this by adding something that limits full TF runs to merges into `main`.  The rest could possibly receive linting, but no affecting infrastructure.

You can also provoke a run by heading to the [Pipelines](https://git.joshpreston.net/terraform/linode-core/-/pipelines) section and re-running a job.


### DNS

At present the joshpreston.net domain is under **some** TF management.  See what is managed within the `domain-joshpreston_net.auto.tfvars` file.  At the time of writing, nearly all records under joshpreston.net domain (A and CNAME) are managed, but the domain definition itself is commented out.  Not brave enough for that I suppose.

#### Usage

Push to any branch.  The job will run.  Note that the `apply` stage will only run manually, meaning you got to hit apply via gitlab.  When I get more confident, this stop-gap will be pulled for complete automation.

