variable "resource_group" {
  type = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "alert_name" {
  type = string
}
variable "scope_id" {
  type = list(string)
}
variable "description" {
  type = string
}
variable "enabled" {
  type = bool
}
variable "category" {
  type = string
}
variable "service_health_events" {
  type = list(string)
}
variable "action_group_id" {
  type = string
}