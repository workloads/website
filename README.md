# Terraform Cloud Workspace: `website`

> This directory manages the lifecycle of the website configuration for [@workloads](https://github.com/workloads).

## Table of Contents

<!-- TOC -->
* [Terraform Cloud Workspace: `website`](#terraform-cloud-workspace--website)
  * [Table of Contents](#table-of-contents)
    * [Inputs](#inputs)
    * [Outputs](#outputs)
<!-- TOC -->

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

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/workloads/website/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
