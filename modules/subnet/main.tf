resource "google_compute_subnetwork" "vpc_subnet" {
  name          = var.name
  ip_cidr_range = var.ip_cidr_block
  region        = var.region
  project       = var.project
  network       = var.network_id
}
