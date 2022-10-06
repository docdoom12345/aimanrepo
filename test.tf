provider "azurerm" {
  # Configuration options
  features {}
}
resource "azurerm_resource_group" "example1" {
  name     = var.rgname
  location = var.rglocation
}
