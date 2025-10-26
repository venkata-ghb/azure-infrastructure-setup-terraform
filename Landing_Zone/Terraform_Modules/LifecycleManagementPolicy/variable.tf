variable "storage_account_id" {
  type = string
}
variable "enable_rule" {
  type = bool
}
variable "rule_name" {
  type = string
}
variable "rule_name_01" {
  type = string
}
variable "blob_types" {
  type = list(string)
}
variable "delete_after_days_since_creation_greater_than" {
  type = number
}