terraform {
  # see https://www.terraform.io/language/settings/terraform-cloud
  cloud {
    # see https://www.terraform.io/cli/cloud/settings#organization
    organization = "workloads"

    # see https://www.terraform.io/cli/cloud/settings#workspaces
    workspaces {
      name = "website"
    }
  }

  # see https://www.terraform.io/docs/language/settings/index.html#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/integrations/github/5.1.0/
    github = {
      source  = "integrations/github"
      version = ">= 5.1.0, < 6.0.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/local/2.2.3
    local = {
      source  = "hashicorp/local"
      version = ">= 2.2.3, < 3.0.0"
    }
  }

  # see https://www.terraform.io/docs/language/settings/index.html#specifying-a-required-terraform-version
  required_version = ">= 1.3.0"
}
