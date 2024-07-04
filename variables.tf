variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "location" {
  description = "The location of the bucket."
  type        = string
}
variable "region" {
  description = "The region of the resource."
  type        = string
}
variable "cluster_name_suffix" {
  description = "A suffix to append to the default cluster name"
  default     = "jmc-sample"
}


variable "network" {
  description = "The VPC network to host the cluster in"

}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in"
}

variable "ip_range_pods" {
  description = "The secondary ip range to use for pods"
}

variable "ip_range_services" {
  description = "The secondary ip range to use for services"
}

variable "compute_engine_service_account" {
  description = "Service account to associate to the nodes in the cluster"
  
}

variable "enable_binary_authorization" {
  description = "Enable BinAuthZ Admission controller"
  default     = false
}