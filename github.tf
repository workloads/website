# see https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/organization
data "github_organization" "main" {
  name = var.github_owner
}

# get all repositories for the GitHub Organization
# see https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/repositories
data "github_repositories" "public" {
  # find all repositories that are specific to this organization and are publicly available
  # see https://docs.github.com/search-github/searching-on-github/searching-for-repositories
  query = "org:${data.github_organization.main.orgname} is:public"
}

# iterate over all repositories and retrieve data
# see https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/repository
data "github_repository" "main" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments/for_each
  for_each = toset(data.github_repositories.public.full_names)

  full_name = each.key
}
