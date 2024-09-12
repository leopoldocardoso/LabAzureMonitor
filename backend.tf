terraform {
  backend "azurerm" {
    resource_group_name  = "rg-iac-dev"
    storage_account_name = "iacterraformtfstate"
    container_name       = "labmicrosoftlearn"
    key                  = "labmicrosoftlearn"
  }
}
