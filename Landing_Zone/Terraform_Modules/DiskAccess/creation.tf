resource "azurerm_disk_access" "name" {
  name                  = var.disk_access_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  tags                  = var.tags
}