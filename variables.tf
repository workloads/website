variable "github_owner" {
  type        = string
  description = "This is the target GitHub organization or individual user account to manage."
  default     = "workloads"
}

variable "github_token" {
  type        = string
  description = "This is the GitHub token."
  sensitive   = true
}

variable "fontawesome_identifier" {
  type        = string
  description = "Font Awesome Kit Identifier."
  default     = "f8764d0198"
}

variable "theme_color" {
  type        = string
  description = "Theme color for Website."
  default     = "#60DEA9"
}

variable "twitter_user" {
  type        = string
  description = "Twitter Username."
  default     = "@wrklds"
}
