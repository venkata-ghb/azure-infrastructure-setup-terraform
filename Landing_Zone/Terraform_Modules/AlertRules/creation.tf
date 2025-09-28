resource "azurerm_monitor_activity_log_alert" "alert" {
  name                  = var.alert_name
  resource_group_name   =  var.resource_group
  scopes                = var.scope_id
  location              = var.location
  description           = var.description
  tags                  = var.tags 
  enabled               = var.enabled

  criteria {
    category = var.category
    service_health {
      events = var.service_health_events
      locations = ["All"]
    }
    }
  action {
    action_group_id = var.action_group_id
  }
}