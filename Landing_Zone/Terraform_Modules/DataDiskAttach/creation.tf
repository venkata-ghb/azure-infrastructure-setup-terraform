resource "azurerm_managed_disk" "data_disk" {
  name                          = var.data_disk_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  storage_account_type          = var.storage_ac_type
  create_option                 = var.create_option
  disk_size_gb                  = var.disk_size_gb
  disk_encryption_set_id        = var.disk_encryption_set_id
  zone                          = var.zone == "" ? null : var.zone
  disk_access_id                = var.disk_access_id
  public_network_access_enabled = var.enable_public_network_access
  network_access_policy         = var.network_access_policy
  tags                          = var.tags
}   

# Attaching Data disk to the Virtual Machine

resource "azurerm_virtual_machine_data_disk_attachment" "name" {
  managed_disk_id           = azurerm_managed_disk.data_disk.id
  virtual_machine_id        = var.virtual_machine_id
  lun                       = var.lun
  caching                   = var.caching
  write_accelerator_enabled = var.enable_write_accelerator
  depends_on = [ azurerm_managed_disk.data_disk ]
}