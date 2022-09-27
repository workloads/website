# see https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
resource "local_file" "website" {
  # see https://developer.hashicorp.com/terraform/language/functions/templatefile
  content = templatefile("./templates/index.tftpl.html", {
    fontawesome_identifier = var.fontawesome_identifier
    name                   = data.github_organization.main.name
    orgname                = data.github_organization.main.orgname
    description            = data.github_organization.main.description
    repositories           = data.github_repository.main,
    theme_color            = var.theme_color,
    twitter_user           = var.twitter_user,
  })

  filename = "${path.module}/templates/index.html"
}
