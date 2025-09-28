resource "azurerm_virtual_network" "vnet" {
  name = var.vnet_name
  resource_group_name = var.resource_group
  location = var.location
  address_space = var.address_space
  dns_servers = var.dns_servers
  tags = var.tags
  dynamic ddos_protection_plan {
    for_each = var.ddos_protection_plan_enabled ? [1] : []
    content {
      id = var.ddos_protection_plan_id
      enable = var.ddos_protection_plan_enabled
    }
  }
}