# IAM configuration to enable cloud build to deploy services onto cloud run

data "google_project" "project" {}

resource "google_project_iam_member" "cloudbuild_roles" {
  depends_on = [google_cloudbuild_trigger.trigger]
  for_each = toset(["roles/run.admin",
  "roles/iam.serviceAccountUser"])
  project = var.project_id
  role    = each.key
  member  = "serviceAccount:${data.google_project.project.number}@cloudbuild.gserviceaccount.com"
}