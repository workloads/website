# Terraform Cloud Workspace: `website`

Terraform-rendered, GitHub-infused website.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| github_owner | This is the target GitHub organization or individual user account to manage. | `string` | yes |
| github_token | A GitHub OAuth / Personal Access Token. | `string` | yes |
| fontawesome_identifier | Font Awesome Kit Identifier. | `string` | no |

### Outputs

| Name | Description |
|------|-------------|
| github_repositories | Exported Attributes for `github_repositories` data-source. |
| github_repository | Exported Attributes for `github_repository` data-source. |
<!-- END_TF_DOCS -->
