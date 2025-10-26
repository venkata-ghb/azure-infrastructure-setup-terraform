variable "key_vault_key_name" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "expiration_date" {
  default = null
  type = string
}
variable "key_vault_id" {
  type = string
}
variable "key_opts" {
  default = ["decrypt","encrypt","sign","unwrapKey","verify","wrapKey"]
  type = list(string)
}
variable "key_size" {
  default = null
  type = string
}
variable "key_type" {
  type = string
}