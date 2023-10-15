variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "project" {
  type = string
  description = "The GCP project"
}

variable "network_id" {
  type = string
}

variable "ip_cidr_block" {
  type = string
  description = "CIDR block for the subnet"
}