resource "azurerm_network_security_group" "ssh_nsg" {
  name                = var.nsg_name
  location            = var.nsg_location  # Replace with your VM location
  resource_group_name = var.nsg_resource_group_name  # Replace with your RG name

  security_rule {
    name                       = "Allow-SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
  name                       = "Allow-HTTP"
  priority                   = 1002
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "80"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}
}
data "azurerm_network_interface" "vm_nic" {
  name                = var.nic_name
  resource_group_name = var.nic_resource_group_name
}

resource "azurerm_network_interface_security_group_association" "NSG" {
  network_interface_id      = data.azurerm_network_interface.vm_nic.id
  network_security_group_id = azurerm_network_security_group.ssh_nsg.id
}

