terraform {
  # see https://developer.hashicorp.com/terraform/language/settings/terraform-cloud
  cloud {
    # see https://app.terraform.io/app/workloads/workspaces
    # and https://developer.hashicorp.com/terraform/cli/cloud/settings#organization
    organization = "workloads"

    # see https://app.terraform.io/app/workloads/website
    # and https://developer.hashicorp.com/terraform/cli/cloud/settings#workspaces
    workspaces {
      name = "website"
    }
  }

  # see https://developer.hashicorp.com/terraform/language/settings#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/aws/5.14.0
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.14.0, < 6.0.0"
    }

    # see https://registry.terraform.io/providers/integrations/github/5.33.0
    github = {
      source  = "integrations/github"
      version = ">= 5.33.0, < 6.0.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/local/2.4.0
    local = {
      source  = "hashicorp/local"
      version = ">= 2.4.0, < 3.0.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/random/3.5.1
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.1, < 4.0.0"
    }
  }

  # see https://developer.hashicorp.com/terraform/language/settings#specifying-a-required-terraform-version
  required_version = ">= 1.5.0, < 2.0.0"
}
