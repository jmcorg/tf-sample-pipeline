project_id    = "jmc-devsecops"
location = "ASIA"
region = "asia-south1"


cluster_name_suffix="jmc-sample-gke"
network="default"
subnetwork="default"
ip_range_pods="10.100.0.0/14"
ip_range_services="34.118.224.0/20"
compute_engine_service_account="sa-jomcyggithub-gcloudauth@jmc-devsecops.iam.gserviceaccount.com"
enable_binary_authorization="true"