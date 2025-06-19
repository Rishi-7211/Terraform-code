resource "azurerm_public_ip" "AppPublicIP" {
  name                = var.public_ip_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku = "Standard"

  }
