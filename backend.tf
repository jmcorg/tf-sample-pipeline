terraform {
  backend "gcs" {
    bucket  = "jmc-test-storage"
    prefix  = "terraform/state/tf-sample-pipeline"

  }
}



