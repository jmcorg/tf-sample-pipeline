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

resource "google_cloud_run_service" "default" {
  name     = "cloudrun-srv"
  location = var.region

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }

    metadata {
      annotations = {
        "autoscaling.knative.dev/maxScale"      = "1000"
        "run.googleapis.com/cloudsql-instances" = google_sql_database_instance.instance.connection_name
        "run.googleapis.com/client-name"        = "terraform"
      }
    }
  }
  autogenerate_revision_name = true
}

resource "google_sql_database_instance" "instance" {
  name             = "jmcapp-sql"
  region           = var.region
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
}