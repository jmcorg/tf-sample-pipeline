terraform {
  backend "gcs" {
    bucket  = "jmcorg-tfstate_lz"
    prefix  = "terraform/state/tf-sample-pipeline"

  }
}