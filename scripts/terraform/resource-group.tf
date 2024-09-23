#
# Creates a resource group for Book Catalog and Inventory Management in Azure.
#
resource "azurerm_resource_group" "booklib" {
  name     = var.app_name
  location = var.location
}
