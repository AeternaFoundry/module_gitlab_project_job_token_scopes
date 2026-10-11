variable "project_job_token_scopes" {
  description = <<EOT
Map of project_job_token_scopes, attributes below
Required:
    - project
Optional:
    - enabled
    - target_group_ids
    - target_project_ids
EOT

  type = map(object({
    project            = string
    enabled            = optional(bool)
    target_group_ids   = optional(set(number))
    target_project_ids = optional(set(number))
  }))
}

