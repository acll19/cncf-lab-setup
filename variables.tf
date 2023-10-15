variable "project" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type = string
  description = "GCP region name"
}

variable "vpc_name" {
  type = string
  description = "The VPC name"
}

variable "subnet_name" {
  type = string
  description = "Name of the subnet"
}

variable "network_ip_cidr_block" {
  type = string
  description = "CIDR block for the subnet"
}