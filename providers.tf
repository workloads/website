# see https://registry.terraform.io/providers/integrations/github/latest/docs
provider "github" {
  owner = var.github_owner
  token = var.github_token
}

# see https://registry.terraform.io/providers/hashicorp/local/latest/docs
provider "local" {}
