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

resource "google_cloud_run_service" "jmcapp-crun" {
  name     = "jmcapp-crun-srv"
  location = var.location

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
        startup_probe {
          initial_delay_seconds = 0
          timeout_seconds = 1
          period_seconds = 3
          failure_threshold = 1
          tcp_socket {
            port = 8080
          }
        }
        liveness_probe {
          http_get {
            path = "/"
          }
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  lifecycle {
    ignore_changes = [
      metadata.0.annotations,
    ]
  }
}