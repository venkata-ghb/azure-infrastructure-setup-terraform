resource "azurerm_storage_management_policy" "name" {
  storage_account_id = var.storage_account_id
  
  rule {
    name    = var.rule_name
    enabled = var.enable_rule
    filters { blob_types = var.blob_types }
    actions {
        base_blob {delete_after_days_since_creation_greater_than = var.delete_after_days_since_creation_greater_than}
    }
  }

  rule {
    name    = var.rule_name_01
    enabled = var.enable_rule
    filters {blob_types = var.blob_types }
    actions {
        snapshot {delete_after_days_since_creation_greater_than = var.delete_after_days_since_creation_greater_than}
    }
  }
}