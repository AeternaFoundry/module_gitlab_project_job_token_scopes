resource "gitlab_project_job_token_scopes" "project_job_token_scopes" {
  for_each = var.project_job_token_scopes

  project            = each.value.project
  enabled            = each.value.enabled
  target_group_ids   = each.value.target_group_ids
  target_project_ids = each.value.target_project_ids
}

