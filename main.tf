resource "azurerm_resource_group" "this" {
  name     = "rg-binay"
  location = "centralindia"
}

resource "azurerm_storage_account" "this" {
  name                     = "storageabinay"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}