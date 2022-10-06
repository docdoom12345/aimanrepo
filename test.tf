provider "azurerm" {
  # Configuration options
  features {}
  alias           = "dev1" #nickname for subscription
  subscription_id = "febbdafe-ca54-4914-8e49-77d353fdbb12"
  client_id       = "31aada00-a3c0-44f8-a101-ad1a681b7920"
  client_secret   = "TrnhW72DpYSI8ubXL-pLO-R8p5vmSpD~H3"
  tenant_id       = "cea297cb-9bde-428d-9a6e-48fa9c582ed6"
}
resource "azurerm_resource_group" "example1" {
  provider = azurerm.dev1
  name     = var.rgname
  location = var.rglocation
}