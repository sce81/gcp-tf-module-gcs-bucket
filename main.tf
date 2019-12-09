resource "google_storage_bucket" "main" {
  name      = var.bucket_name
  location  = var.bucket_location
  project   = var.project

  versioning {
    enabled = var.versioning_enabled
  }
  storage_class = var.storage_class

  labels = {
    name        = var.bucket_name
    environment = var.env
    project     = var.project
  }
}


