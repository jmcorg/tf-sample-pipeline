resource "google_storage_bucket" "auto-expire" {
  name          = "jmctest-tfsample-bucket"
  location      = var.location
  project       = var.project_id
  force_destroy = true
  labels                   = merge(var.labels, {  env = "nonprod", app-name = "jmcapp"  })
 
  public_access_prevention = "enforced"
  # logging {
  #   log_bucket = "jmcorg-tfstate_lz"
  #   log_object_prefix = "sentinel/logs/tf-sample-pipeline"
  # }
}

# locals {
#   cluster_type = "simple-regional"
# }

# data "google_client_config" "default" {}

# provider "kubernetes" {
#   host                   = "https://${module.gke.endpoint}"
#   token                  = data.google_client_config.default.access_token
#   cluster_ca_certificate = base64decode(module.gke.ca_certificate)
# }

# module "gke" {
#   source  = "terraform-google-modules/kubernetes-engine/google"
#   version = "~> 31.0"

#   project_id                  = var.project_id
#   name                        = "${local.cluster_type}-cluster${var.cluster_name_suffix}"
#   regional                    = true
#   region                      = var.region
#   network                     = var.network
#   subnetwork                  = var.subnetwork
#   ip_range_pods               = var.ip_range_pods
#   ip_range_services           = var.ip_range_services
#   create_service_account      = false
#   service_account             = var.compute_engine_service_account
#   enable_cost_allocation      = true
#   enable_binary_authorization = var.enable_binary_authorization
#   gcs_fuse_csi_driver         = true
#   fleet_project               = var.project_id
#   deletion_protection         = false
#   stateful_ha                 = true
# }


































# # resource "google_cloud_run_service" "default" {
# #   name     = "cloudrun-srv"
# #   location = var.region

# #   template {
# #     spec {
# #       containers {
# #         image = "us-docker.pkg.dev/cloudrun/container/hello"
# #       }
# #     }

# #     metadata {
# #       annotations = {
# #         "autoscaling.knative.dev/maxScale"      = "1000"
# #         #"run.googleapis.com/cloudsql-instances" = google_sql_database_instance.instance.connection_name
# #         "run.googleapis.com/client-name"        = "terraform"
# #       }
# #     }
# #   }
# #   autogenerate_revision_name = true
# # }

