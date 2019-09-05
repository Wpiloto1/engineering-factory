resource "google_compute_subnetwork" "subnet-enginnering-factory" {
  name          = "${var.subnet_name}"
  ip_cidr_range = "${var.bloc_IP}"
  region        = "${var.region_project}"
  network       = "${google_compute_network.vpc-network-enginnering-factory.id}"  
}