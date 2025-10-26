variable "autoscale_name" {
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
variable "target_resource_id" {
  type = string
}
variable "profile_name" {
  type = string
}
variable "default_instance_count" {
  type = number
}
variable "max_instance_count" {
  type = number
}
variable "min_instance_count" {
  type = number
}
variable "autoscale_rules" {
  type = list(object({
    metric_name       = string
    time_grain        = string
    statistic         = string
    time_window       = string
    time_aggregation  = string
    operator          = string
    threshold         = number
    direction         = string
    instance_change_value = number
    cooldown          = string
  }))
}