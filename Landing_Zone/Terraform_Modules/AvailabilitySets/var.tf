variable "resource_group" {
  type = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "avset_name" {
  type = string
}
variable "platform_fault_domain_count" {
  type = number
}
variable "platform_update_domain_count" {
  type = number
}