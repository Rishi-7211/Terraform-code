resource "azurerm_key_vault" "db_keyvault" {
  name                        = var.key_vault_name
  location                    = var.key_vault_location
  resource_group_name         = var.key_vault_resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"

  enable_rbac_authorization   = true
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true
}


