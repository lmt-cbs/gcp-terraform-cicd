# Luis Merino : variables file for the gcp terraform test

variable "project_id" {
  description = "GCP project_id"
  type        = string
}

variable "region" {
  description = "GCP Region"
  default     = "europe-southwest1"
  type        = string
}

variable "namespace" {
  description = "Project namespace for unique resource naming"
  type        = string
}
