resource "azurerm_availability_set" "availability_set" {
  name = var.avset_name
  location = var.location
  resource_group_name = var.resource_group
  platform_fault_domain_count = var.platform_fault_domain_count
  platform_update_domain_count = var.platform_update_domain_count
  tags = var.tags
}