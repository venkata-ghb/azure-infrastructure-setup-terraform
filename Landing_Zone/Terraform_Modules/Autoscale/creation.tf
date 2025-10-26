resource "azurerm_monitor_autoscale_setting" "example" {
  name                = var.autoscale_name
  resource_group_name = var.resource_group_name
  location            = var.location
  target_resource_id  = var.target_resource_id
  tags = var.tags
  lifecycle {
    ignore_changes = [ tags ]
  }
  profile {
    name = var.profile_name

    capacity {
      default = tostring(var.default_instance_count)
      minimum = tostring(var.min_instance_count)
      maximum = tostring(var.max_instance_count)
    }

    dynamic "rule" {
      for_each = var.autoscale_rules
      content {
          metric_trigger {
            metric_name        = rule.value.metric_name
            metric_resource_id = var.target_resource_id
            time_grain         = rule.value.time_grain
            statistic          = rule.value.statistic
            time_window        = rule.value.time_window
            time_aggregation   = rule.value.time_aggregation
            operator           = rule.value.operator
            threshold          = rule.value.threshold
            metric_namespace   = "microsoft.compute/virtualmachinescalesets"
          }
      scale_action {
        direction = rule.value.direction
        type      = "ChangeCount"
        value     = tostring(rule.value.instance_change_value)
        cooldown  = rule.value.cooldown
      }
    }
    }
  }
}