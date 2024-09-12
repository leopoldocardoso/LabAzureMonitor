resource "azurerm_public_ip" "pip-vmlx" {
  name                = "pip-vmlx-${var.sufix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Dynamic"
  tags                = var.tags
}

resource "azurerm_public_ip" "pip-vmwin" {
  name                = "pip-vmwin-${var.sufix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Dynamic"
  tags                = var.tags
}