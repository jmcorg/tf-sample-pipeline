resource "google_storage_bucket" "auto-expire" {
  name          = "jmcorg-no-public-access-bucket"
  location      = var.location
  project       = var.project_id
  force_destroy = true

  public_access_prevention = "enforced"
}