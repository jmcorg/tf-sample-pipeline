module "tfplan/v2" {
  source = "./mocks/azure-vm-mock-tfplan-v2.sentinel"
}

policy "bucket-logging-is-enabled" {
  #source = "./policies/bucket-logging-is-enabled/bucket-logging-is-enabled.sentinel"
  source = "./bucket-logging-is-enabled.sentinel"
  enforcement_level = "advisory"
}