# terraform {
#   backend "gcs" {
#     bucket  = "jmcorg-tfstate_lz"
#     prefix  = "terraform/state/tf-sample-pipeline"

#   }
# }



terraform {
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "jmcorg"

    workspaces {
      name = "tf-sample-pipeline"
    }
  }
}