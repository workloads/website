output "github_repositories" {
  description = "Exported Attributes for `github_repositories` data-source."
  value       = data.github_repositories.public
}

output "github_repository" {
  description = "Exported Attributes for `github_repository` data-source."
  value       = data.github_repository.main
}
