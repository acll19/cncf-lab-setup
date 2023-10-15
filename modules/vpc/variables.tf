variable "name" {
  type = string
  description = "VPC name"
}

variable "auto_create_subnetworks" {
  type = bool
  description = "Whether or not to auto create subnets"
  default = false
}

variable "project" {
  type = string
  description = "The GCP project"
}