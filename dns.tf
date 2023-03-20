# The Route53 Zone Data Source is solely used to retrieve a Route53 Zone ID.
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone
data "aws_route53_zone" "domains" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments/for_each
  for_each = var.domains

  name = each.value
}
