
terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~>5.30.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.30" # Align with google provider version (approximately)
    }
     kubernetes = {
      source = "hashicorp/kubernetes"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.91.0"
    }
  }
}

provider "google-beta" {
  # Configuration options


}

provider "google" {
  # Configuration options
  project = "jmc-devsecops"

}
// Configure the provider
provider "hcp" {}

# terraform {
#   cloud {
#     hostname = "app.terraform.io"
#     organization = "jmcorg"
#     workspaces {
#       name = ["tf-sample-pipeline"]
#     }
#   }
# }