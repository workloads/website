terraform {
  # see https://developer.hashicorp.com/terraform/language/settings/terraform-cloud
  cloud {
    # see https://developer.hashicorp.com/terraform/cli/cloud/settings#organization
    organization = "workloads"

    # see https://developer.hashicorp.com/terraform/cli/cloud/settings#workspaces
    workspaces {
      name = "website"
    }
  }

  # see https://developer.hashicorp.com/terraform/language/settings#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/integrations/github/5.13.0/
    github = {
      source  = "integrations/github"
      version = ">= 5.13.0, < 6.0.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/local/2.2.3
    local = {
      source  = "hashicorp/local"
      version = ">= 2.2.3, < 3.0.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/random/3.4.3
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }

  # see https://developer.hashicorp.com/terraform/language/settings#specifying-a-required-terraform-version
  required_version = ">= 1.3.0"
}
