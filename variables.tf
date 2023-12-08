variable "domain" {
  type        = string
  description = "Website Domain."
  default     = "workloads.io"
}

variable "github_owner" {
  type        = string
  description = "This is the target GitHub Organization."
  default     = "workloads"
}

variable "github_token" {
  type        = string
  description = "This is the GitHub Token."
  sensitive   = true
}

variable "fontawesome_identifier" {
  type        = string
  description = "Font Awesome Kit Identifier."
  default     = "f8764d0198"
}

variable "management_region_aws" {
  type        = string
  description = "AWS-specific `Management` Region Identifier."
}

variable "subdomain" {
  type        = string
  description = "Website Subdomain."
  default     = "www"
}

variable "website" {
  type = object({
    theme_color  = string
    twitter_user = string
  })

  description = "Object of Website Configuration Data."
  default = {
    theme_color  = "#282433"
    twitter_user = "wrklds"
  }
}
