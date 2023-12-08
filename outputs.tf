output "aws_cli_commands" {
  description = "AWS CLI Command for CloudFront operations."

  value = {
    create_invalidation = "aws cloudfront create-invalidation --distribution-id '${module.website.aws_cloudfront_distribution.id}' --paths '/*'"
  }
}

output "aws_cloudfront_aliases" {
  description = "Exported Attributes for `module.website.aws_cloudfront_distribution.aliases`."
  value       = module.website.aws_cloudfront_distribution.aliases
}

output "aws_cloudfront_domain_name" {
  description = "Exported Attribute for `module.website.aws_cloudfront_distribution.domain_name`."
  value       = module.website.aws_cloudfront_distribution.domain_name
}

output "aws_console_urls" {
  description = "AWS Console URLs."

  value = [
    "https://s3.console.aws.amazon.com/s3/buckets/${module.website.aws_s3_bucket.bucket}?region=${var.management_region_aws}&tab=objects",
    "https://us-east-1.console.aws.amazon.com/cloudfront/v3/home?region=${var.management_region_aws}#/distributions/${module.website.aws_cloudfront_distribution.id}"
  ]
}

output "aws_s3_bucket" {
  description = "Exported Attribute for `module.website.aws_s3_bucket`."
  value       = module.website.aws_s3_bucket.bucket
}

output "github_repositories_list" {
  description = "Exported List of Repositories of the `github_repositories.main` Data Source."
  value       = data.github_repositories.main
}
