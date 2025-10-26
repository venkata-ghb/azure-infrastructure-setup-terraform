data "azurerm_monitor_diagnostic_categories" "name" {
  count = length([var.target_id])
  resource_id = [var.target_id][count.index]
}

resource "azurerm_monitor_diagnostic_setting" "name" {
  name = var.diagnostic_setting_name
  target_resource_id = var.target_id
  storage_account_id = var.storage_account_id == "" ? null : var.storage_account_id
  log_analytics_workspace_id = var.law_id == "" ? null : var.law_id

  dynamic "enabled_log" {
    for_each = var.enable_logs ? [for lg in data.azurerm_monitor_diagnostic_categories.name[0].log_category_groups : { lg_name = lg }] : []
    content {
      category_group = enabled_log.value.lg_name
    }
  }

  dynamic "metric" {
    for_each = var.enabled_metric ? [for mt in data.azurerm_monitor_diagnostic_categories.name[0].metrics : { mt_name = mt }] : []
    content {
      category = metric.key
      enabled = var.enabled_metric
    }
  }

  lifecycle {
    ignore_changes = [ enabled_log, metric ]
  }
}