variable "policy_name" {
  type = string
}
variable "display_name" {
  type = string
}
variable "policy_mode" {
  type = string
}
variable "description" {
  type = string
}
variable "resource_ids" {
  type = map(string)
}
variable "assignment_name" {
  type = string
}
variable "enforce" {
  type = bool
}