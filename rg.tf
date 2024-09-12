resource "azurerm_resource_group" "rg" {
  name     = "rg-alpha"
  location = "eastus"
  tags     = var.tags
}