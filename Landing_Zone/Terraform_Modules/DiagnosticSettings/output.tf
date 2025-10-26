output "diag_name" {
  value = azurerm_monitor_diagnostic_setting.name.*.name
}
output "diag_id" {
  value = azurerm_monitor_diagnostic_setting.name.*.id
}