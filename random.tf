# see https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "bucket_suffix" {
  length  = 4
  lower   = true
  special = false
  upper   = false
}
