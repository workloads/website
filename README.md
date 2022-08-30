# Terraform Cloud Workspace: `website`

> This directory manages the lifecycle of the website configuration for [@workloads](https://github.com/workloads).

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| github_token | This is the GitHub token. | `string` | yes |
| fontawesome_identifier | Font Awesome Kit Identifier. | `string` | no |
| github_owner | This is the target GitHub organization or individual user account to manage. | `string` | no |
| theme_color | Theme color for website. | `string` | no |
| twitter_user | Twitter Username. | `string` | no |

### Outputs

| Name | Description |
|------|-------------|
| github_repositories | Exported Attributes for `github_repositories` data-source. |
| github_repository | Exported Attributes for `github_repository` data-source. |
<!-- END_TF_DOCS -->
