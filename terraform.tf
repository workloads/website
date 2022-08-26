terraform {
  cloud {
    organization = "workloads"

    workspaces {
      name = "website"
    }
  }

  # see https://www.terraform.io/docs/language/settings/index.html#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/integrations/github/4.29.0/
    github = {
      source  = "integrations/github"
      version = "4.29.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/local/2.2.3
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }
  }

  # see https://www.terraform.io/docs/language/settings/index.html#specifying-a-required-terraform-version
  required_version = ">= 1.2.8"
}
