# see https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
resource "local_file" "website" {
  # see https://www.terraform.io/language/functions/templatefile
  content = templatefile("./templates/index.tftpl.html", {
    fontawesome_identifier = var.fontawesome_identifier
    name                   = data.github_organization.main.name
    orgname                = data.github_organization.main.orgname
    description            = data.github_organization.main.description
    repositories           = data.github_repository.main,
  })

  filename = "${path.module}/templates/index.html"
}
