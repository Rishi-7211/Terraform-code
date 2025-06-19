resource "azurerm_network_interface" "network_interface" {
  name                = var.nic_name
  location            = var.nic_resource_location
  resource_group_name = var.nic_resource_group_name

  ip_configuration {
    name                          = var.nic_ip_config_name
    subnet_id                     = data.azurerm_subnet.subnet_id.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.public_ip.id
  }
}




