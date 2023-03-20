locals {
  # random string for use with S3 Bucket names
  bucket_suffix = "site-${random_string.bucket_suffix.id}"
}

module "websites" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments/for_each
  for_each = {
    for domain in data.aws_route53_zone.domains :
    domain.name => domain
  }

  # see REGISTRY
  #source = "git@github.com:ksatirli/terraform-aws-cloudfront-website?ref=updates-and-upgrades"
  source = "../../ksatirli/terraform-aws-cloudfront-website"
  #version = "2.0.0"

  # see https://developer.hashicorp.com/terraform/language/providers/configuration#alias-multiple-provider-configurations
  providers = {
    # NOTE: ACM Certificates for usage with CloudFront must be created in the `us-east-1` region, see https://amzn.to/2TW2J16
    aws.certificate = aws.certificate
  }

  # take domain name and remove dot characters from string, then append suffix with random string
  s3_bucket_name = "${replace(each.value.name, ".", "")}-${local.bucket_suffix}"
  domain_name    = each.value.name

  # create `www` subdomain for broader accessibility
  alternate_domain_names = [
    "www.${each.value.name}",
  ]
}

# see https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
resource "local_file" "primary_website" {
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

  filename = "${path.module}/index.html"
}

locals {
  # create local value containing all primary website files
  # see https://developer.hashicorp.com/terraform/language/functions/concat
  primary_website_files = concat(
    tolist([local_file.primary_website.filename]),

    # see https://developer.hashicorp.com/terraform/language/functions/fileset
    tolist(fileset(path.module, "./templates/assets/*"))
  )
}

output "primary_website_files" {
  value = local.primary_website_files
}

# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object
resource "aws_s3_object" "primary_website" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments/for_each
  for_each = toset(local.primary_website_files)

  bucket = module.websites["workloads.io"].aws_s3_bucket.id

  # see https://developer.hashicorp.com/terraform/language/functions/basename
  key = replace(each.key, "templates/", "")

  # see https://developer.hashicorp.com/terraform/language/functions/filebase64
  source = each.key

  # see https://developer.hashicorp.com/terraform/language/functions/filemd5
  #etag = filemd5(each.key)
}
