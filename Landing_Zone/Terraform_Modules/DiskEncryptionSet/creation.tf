resource "azurerm_disk_encryption_set" "name" {
  name = var.des_name 
  location = var.location
  resource_group_name = var.resource_group_name
  key_vault_key_id = var.key_vault_key_id
  identity {
    type = "SystemAssigned"
  }
  tags = var.tags
}

resource "azurerm_role_assignment" "name" {
  scope = var.key_vault_key_id
  role_definition_name = var.role_definition_name
  principal_id = azurerm_disk_encryption_set.name.identity[0].principal_id
  depends_on = [ azurerm_disk_encryption_set.name ]
}