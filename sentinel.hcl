

policy "bucket-logging-is-enabled" {
  #source = "./policies/bucket-logging-is-enabled/bucket-logging-is-enabled.sentinel"
  source = "./bucket-logging-is-enabled.sentinel"
  enforcement_level = "advisory"
}