variable "project_name" {
  description = "The ID of the Google Cloud Organization."
  type = "string"
  default = "enginnering-dev"
}
variable "project_id" {
  description = "The ID of the Google Cloud Organization."
  type = "string"
  default = "enginnering-dev"
}
variable "region_project" {
  default = "southamerica-east1"
}
variable "region_zone" {
  default = "southamerica-east1-a"
}
variable "network_name" {
  description = "The ID of the Google Cloud network_name."
  type = "string"
  default = "network-enginnering-dev-vpc"
}
variable "subnet_name" {
  description = "The ID of the Google Cloud subnet."
  type = "string"
  default = "subnet-enginnering-dev"
}
variable "instance_name" {
  description = "Name of instance."
  type = "string"
  default = "eng-lin-medium"
}
variable "ip_private" {
  description = "The ID of the Google Cloud subnet."
  default = "172.29.52.5"
}