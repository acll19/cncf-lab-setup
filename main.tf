terraform {
  required_version = "1.5.2"
  required_providers {
    google-beta = {
      version = "~> 5.1"
    }
  }
}

module "network" {
  source  = "./modules/vpc"
  name    = var.vpc_name
  project = var.project
}

module "subnet" {
  source        = "./modules/subnet"
  name          = var.subnet_name
  region        = var.region
  project       = var.project
  network_id    = module.network.id
  ip_cidr_block = var.network_ip_cidr_block
}

module "firewall" {
  source       = "./modules/firewall"
  network_name = module.network.name
}
