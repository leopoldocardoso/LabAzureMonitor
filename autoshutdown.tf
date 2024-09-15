resource "azurerm_dev_test_global_vm_shutdown_schedule" "shutdownvm1win" {
  virtual_machine_id    = azurerm_windows_virtual_machine.vm1win.id
  location              = var.location
  enabled               = true
  daily_recurrence_time = "0000"
  timezone              = var.timezone
  notification_settings {
    enabled = false
  }
}

resource "azurerm_dev_test_global_vm_shutdown_schedule" "shutdownvm2lnx" {
  virtual_machine_id    = azurerm_linux_virtual_machine.vm2lnx.id
  location              = var.location
  enabled               = true
  daily_recurrence_time = "0000"
  timezone              = var.timezone
  notification_settings {
    enabled = false
  }
}
