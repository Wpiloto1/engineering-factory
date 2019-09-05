resource "google_compute_network" "vpc-network-enginnering-factory" {  //vpc-enginnering-factory
  name                    = "${var.network_name}"
  auto_create_subnetworks = "false"
  routing_mode            = "${var.routing_mode}"
  project                 = "${var.project_id}"
}
