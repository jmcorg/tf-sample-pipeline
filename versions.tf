terraform {
  required_version = ">= 1.0"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.30.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.30" # Align with google provider version (approximately)
    }
  }
}

provider "google-beta" {
  # Configuration options
}

provider "google-beta" {
  # Configuration options
}
