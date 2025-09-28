variable "resource_group" {
  type = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "vnet_name" {
  type = string
}
variable "dns_servers" {
  type = list(string)
}
variable "ddos_protection_plan_id" {
  type = string
}
variable "ddos_protection_plan_enabled" {
  type = bool
}
variable "address_space" {
  type = list(string)
}