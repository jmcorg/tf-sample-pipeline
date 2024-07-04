project_id    = "jmc-devsecops"
location = "ASIA"
region = "asia-south1"


cluster_name_suffix="jmc-sample-gke"
network="default"
subnetwork="default"
ip_range_pods=["10.30.0.0/17"]
ip_range_services=["10.30.128.0/22"]
compute_engine_service_account="sa-jomcyggithub-gcloudauth@jmc-devsecops.iam.gserviceaccount.com"
enable_binary_authorization="true"