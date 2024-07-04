project_id    = "jmc-devsecops"
location = "ASIA"
region = "asia-south1"




cluster_name_suffix="jmc-sample-gke"
network="jm-devsecops-vpc"
subnetwork="subnet-asia-south-1"
ip_range_pods ="tf-gke-dev-pods-secondary-range-1"
ip_range_services="jmc-test-ip-range-service"
compute_engine_service_account="sa-jomcyggithub-gcloudauth@jmc-devsecops.iam.gserviceaccount.com"
enable_binary_authorization="true"

