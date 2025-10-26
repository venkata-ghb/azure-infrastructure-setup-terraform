resource "azurerm_key_vault" "kv" {
  name                              = var.kv_name 
  location                          = var.location
  resource_group_name               = var.resource_group_name
  tenant_id                         = var.tenant_id
  sku_name                          = var.sku_name 
  purge_protection_enabled          = var.enable_purge_protection
  soft_delete_retention_days        = var.soft_delete_retention_days
  rbac_authorization_enabled        = var.enable_rbac_authorization
  enabled_for_disk_encryption       = var.enable_for_disk_encryption
  enabled_for_template_deployment   = var.enable_for_template_deployment
  enabled_for_deployment            = var.enable_for_deployment
  public_network_access_enabled     = var.enable_public_network_access

  dynamic "network_acls" {
    for_each = var.bypass == null ? [] : [1]
    content {
      default_action = var.default_action
      bypass = var.bypass 
      ip_rules = var.ip_rules
      virtual_network_subnet_ids = var.virtual_network_subnet_ids
    }
  }

  tags = var.tags
}