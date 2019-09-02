module firewall-module {
  source = "./module"
  name = "rule-eng-prd-allow"
  network = "network-enginnering-dev-vpc"
  ports = ["22"]
  source_ranges = ["0.0.0.0/0"]
  target_tags = [""]
}