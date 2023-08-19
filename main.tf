resource "google_project_iam_binding" "binding" {
  for_each = { for binding in var.google_project_iam_bindings : binding.unique => binding }
  project  = each.value.project
  role     = each.value.role
  members  = each.value.members
  lifecycle {
    ignore_changes = [etag]
  }
}