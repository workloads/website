# see https://registry.terraform.io/providers/integrations/github/latest/docs
provider "github" {
  owner = var.github_owner
}

# see https://registry.terraform.io/providers/hashicorp/local/latest/docs
provider "local" {}
