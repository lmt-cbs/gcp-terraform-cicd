# To output the URL from the source repo and cloud service

output "urls" {
  value = {
    repo = google_sourcerepo_repository.repo.url
    app  = google_cloud_run_service.service.status[0].url
  }
}