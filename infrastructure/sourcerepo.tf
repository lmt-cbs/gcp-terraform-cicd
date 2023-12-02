# Create the source repository in sourcerepo

resource "google_sourcerepo_repository" "repo" {
  depends_on = [
    google_project_service.enabled_service["sourcerepo.googleapis.com"]
  ]

  name = "${var.namespace}-repo"
}
