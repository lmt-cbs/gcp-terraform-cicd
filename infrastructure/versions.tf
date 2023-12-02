# to lock the provider versions

terraform {
  required_version = ">= 0.15"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.56"
    }
  }
}