variable "kv_name" {
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
variable "tenant_id" {
  type = string
}
variable "sku_name" {
  type = string
}
variable "enable_purge_protection" {
  type = bool
}
variable "soft_delete_retention_days" {
  type = number
}
variable "enable_public_network_access" {
  type = bool
}
variable "enable_rbac_authorization" {
  type = bool
}
variable "enable_for_deployment" {
  type = bool
}
variable "enable_for_disk_encryption" {
  type = bool
}
variable "enable_for_template_deployment" {
  type = bool
}
variable "bypass" {
  type = bool
}
variable "default_action" {
  type = string
}
variable "ip_rules" {
  type = list(string)
}
variable "virtual_network_subnet_ids" {
  type = list(string)
}