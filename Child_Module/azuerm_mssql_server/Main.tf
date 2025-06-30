resource "azurerm_mssql_server" "mssqlserver" {
  name                         = var.mssql_server_name  # must be globally unique
  resource_group_name          = var.mssql_resource_group_name
  location                     = var.mssql_location
  version                      = "12.0"
  administrator_login          = var.mssql_username
  administrator_login_password = var.mssql_password # Use a secure password
  public_network_access_enabled = false
  minimum_tls_version          = "1.2"
}