resource "azurerm_network_ddos_protection_plan" "name" {
  count                 = var.enabled ? 1 : 0
  name                  = var.ddos_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  tags                  = var.tags
}