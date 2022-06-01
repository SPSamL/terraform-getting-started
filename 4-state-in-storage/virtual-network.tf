resource "azurerm_virtual_network" "demo-vnt" {
  address_space       = var.vnt-address-space
  location            = var.location
  name                = upper("${local.upper-resource-prefix}-VNT")
  resource_group_name = azurerm_resource_group.net-rgp.name
}
