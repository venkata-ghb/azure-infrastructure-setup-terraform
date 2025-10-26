variable "data_disk_name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "storage_ac_type" {
  type = string
}
variable "caching" {
  type = string
}
variable "create_option" {
  type = string
}
variable "disk_size_gb" {
  type = string
}
variable "disk_encryption_set_id" {
  type = string
}
variable "zone" {
  type = string
}
variable "disk_access_id" {
  type = string
}
variable "network_access_policy" {
  type = string
}
variable "enable_public_network_access" {
  type = bool
}
variable "virtual_machine_id" {
  type = string
}
variable "lun" {
  type = string
}
variable "enable_write_accelerator" {
  type = bool
}