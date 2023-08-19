variable "google_project_iam_bindings" {
  type = list(object({
    unique  = number,
    project = string,
    role    = string,
    members = list(string)
  }))
  description = "List of project iam members."
}
