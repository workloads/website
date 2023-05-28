# The AWS Provider is set to retrieve configuration from the executing environment
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs#schema
provider "aws" {
  region = "us-west-2"

  # see https://registry.terraform.io/providers/hashicorp/aws/latest/docs#default_tags
  default_tags {
    tags = {
      "github:url" = "https://github.com/workloads/website"
    }
  }
}

# The AWS Provider is set to retrieve configuration from the executing environment
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs#schema
# This aliased version of the provider is specifically limited to the `us-east-1`
# region to allow for lifecycle operations for ACM resources.
provider "aws" {
  alias  = "certificate"
  region = "us-east-1"

  # see https://registry.terraform.io/providers/hashicorp/aws/latest/docs#default_tags
  default_tags {
    tags = {
      "github:url" = "https://github.com/workloads/website"
    }
  }
}

# The GitHub Provider is set to retrieve configuration from the executing environment
# see https://registry.terraform.io/providers/integrations/github/latest/docs
provider "github" {
  owner = var.github_owner
  token = var.github_token
}

# see https://registry.terraform.io/providers/hashicorp/local/latest/docs
provider "local" {}

# see https://registry.terraform.io/providers/hashicorp/random/latest/docs
provider "random" {}
