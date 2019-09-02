
resource "google_compute_instance" "vm_instance" {
  name         = "${var.instance_name}"
  machine_type = "n1-standard-1"
  zone         ="${var.region_zone}"
  allow_stopping_for_update = true
  tags          = ["rule-eng-prd-allow"]

  labels = {
    environment = "engennering-dev",
    network     = "${var.network_name}"
  }
  boot_disk {
      auto_delete = "true"
    initialize_params {
      image        = "centos-7-v20190813"
      size         = "40"
      type         = "pd-standard"
    }   
  }
  network_interface {
    # A default network is created for all GCP projects
    subnetwork = "${data.google_compute_subnetwork.enginnering.self_link}"
    network_ip    = "${var.ip_private}"   
    /* access_config {
        nat_ip = "${google_compute_address.ip-public.address}"
    } */
  }
}