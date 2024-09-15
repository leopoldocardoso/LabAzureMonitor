resource "azurerm_windows_virtual_machine" "vm1win" {
  name                  = "vm1win${var.sufix}"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = var.winvmsize
  admin_username        = var.adminusername
  admin_password        = var.adminpassword
  network_interface_ids = [azurerm_network_interface.nicvm1win.id]
  os_disk {
    name                 = "os-disk-vm1win"
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter"
    version   = "latest"
  }

  tags = var.tags

}

