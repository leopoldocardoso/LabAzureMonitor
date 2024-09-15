resource "azurerm_public_ip" "pip-vm2lnx" {
  name                = "pip-vm2lnx-${var.sufix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Dynamic"
  tags                = var.tags
}

resource "azurerm_public_ip" "pip-vm1win" {
  name                = "pip-vm1win-${var.sufix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Dynamic"
  tags                = var.tags
}