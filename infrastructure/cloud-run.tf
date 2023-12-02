# Set up cloud run to get build image, for terrafomr to work the image cannot be null
# taht is why there is a hello image that will be overwritten with the real build image

resource "google_cloud_run_service" "service" {
  depends_on = [
    google_project_service.enabled_service["run.googleapis.com"]
  ]
  name     = var.namespace
  location = var.region

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }
}