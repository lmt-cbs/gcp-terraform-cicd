# Luis Merino : IN GCP you have to enable the services’ APIs before you can use them. 
#               the Terraform resource that can automate enabling APIs is called google_project_service. 
#               This resource must be created before downstream resources 

locals {
  services = [
    "sourcerepo.googleapis.com",
    "cloudbuild.googleapis.com",
    "run.googleapis.com",
    "iam.googleapis.com",
  ]
}

# loop locals.services tu enable de set of apis
resource "google_project_service" "enabled_service" {
  for_each = toset(local.services)
  project  = var.project_id
  service  = each.key

  provisioner "local-exec" {
    command = "sleep 60"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "sleep 15"
  }
}

