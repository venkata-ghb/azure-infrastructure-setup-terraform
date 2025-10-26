resource "azurerm_key_vault_key" "kv_key" {
  name            = var.key_vault_key_name
  key_vault_id    = var.key_vault_id
  key_type        = var.key_type 
  key_opts        = var.key_opts 
  key_size        = var.key_size
  expiration_date = var.expiration_date
  tags            = var.tags
}