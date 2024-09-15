resource "azurerm_linux_virtual_machine" "vm2lnx" {
  name                            = "vm2lnx${var.sufix}"
  resource_group_name             = azurerm_resource_group.rg.name
  location                        = azurerm_resource_group.rg.location
  size                            = var.vmsize
  disable_password_authentication = false
  admin_username                  = var.adminusername
  admin_password                  = var.adminpassword
  network_interface_ids           = [azurerm_network_interface.nicvm2lnx.id]

  os_disk {
    name                 = "os-disk-vm2lnx"
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

  tags = var.tags
}

