data "azurerm_mssql_server" "mssqlserver" {
  name                = var.mssql_server_name # Replace with your SQL Server name
  resource_group_name = var.mssql_resource_group_name # Replace with your Resource Group name
}