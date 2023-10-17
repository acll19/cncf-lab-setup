resource "google_compute_firewall" "lfclass_allow_all" {
  name    = "lfclass"
  network = var.network_name

  priority = 1000

  direction = "INGRESS"


  allow {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]
}
