# Luis Merino : file for explicit provider definition , in this case GCP

provider "google" {
  project = var.project_id
  region  = var.region
}