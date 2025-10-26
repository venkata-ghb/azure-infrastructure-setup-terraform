variable "des_name" {
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
variable "key_vault_key_id" {
  type = string
}
variable "role_definition_name" {
  type = string
}