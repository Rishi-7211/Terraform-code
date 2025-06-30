data "azurerm_subnet" "subnet_id" {
  name                 = var.nic_subnet_name
  virtual_network_name = var.nic_vnet_name
  resource_group_name  = var.nic_resource_group_name
}

data "azurerm_public_ip" "public_ip" {
  name                = var.nic_public_Ip_name
  resource_group_name = var.nic_resource_group_name
}


