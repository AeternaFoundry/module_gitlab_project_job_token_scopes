output "project_job_token_scopes_id" {
  description = "Map of id values across all project_job_token_scopes, keyed the same as var.project_job_token_scopes except keys with no id are omitted"
  value       = { for k, v in gitlab_project_job_token_scopes.project_job_token_scopes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_job_token_scopes_enabled" {
  description = "Map of enabled values across all project_job_token_scopes, keyed the same as var.project_job_token_scopes except keys with no enabled are omitted"
  value       = { for k, v in gitlab_project_job_token_scopes.project_job_token_scopes : k => v.enabled if v.enabled != null }
}
output "project_job_token_scopes_project" {
  description = "Map of project values across all project_job_token_scopes, keyed the same as var.project_job_token_scopes except keys with no project are omitted"
  value       = { for k, v in gitlab_project_job_token_scopes.project_job_token_scopes : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_job_token_scopes_target_group_ids" {
  description = "Map of target_group_ids values across all project_job_token_scopes, keyed the same as var.project_job_token_scopes except keys with no target_group_ids are omitted"
  value       = { for k, v in gitlab_project_job_token_scopes.project_job_token_scopes : k => v.target_group_ids if v.target_group_ids != null && length(v.target_group_ids) > 0 }
}
output "project_job_token_scopes_target_project_ids" {
  description = "Map of target_project_ids values across all project_job_token_scopes, keyed the same as var.project_job_token_scopes except keys with no target_project_ids are omitted"
  value       = { for k, v in gitlab_project_job_token_scopes.project_job_token_scopes : k => v.target_project_ids if v.target_project_ids != null && length(v.target_project_ids) > 0 }
}

