data "azurerm_network_interface" "nic" {
  name                = var.nic_name
  resource_group_name = var.resource_group_name
}
resource "azurerm_linux_virtual_machine" "virtual_machine" {
  name                = var.virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.resource_location
  size                = "Standard_F2"

 
  admin_username = var.virtual_machine_username 


  
  admin_password = var.virtual_machine_password 

  disable_password_authentication = false
  network_interface_ids = [
    data.azurerm_network_interface.nic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx"
    ]

    connection {
      type     = "ssh"
      user     = var.virtual_machine_username
      password = var.virtual_machine_password
      host     = self.public_ip_address
    }
  }
}










