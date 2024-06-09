resource "google_storage_bucket" "auto-expire" {
  name          = "jmcorg-no-public-access-bucket"
  location      = var.location
  project       = var.project_id
  force_destroy = true

  public_access_prevention = "enforced"
  logging {
    log_bucket = "jmcorg-tfstate_lz"
    log_object_prefix = "sentinel/logs/tf-sample-pipeline"
  }
}