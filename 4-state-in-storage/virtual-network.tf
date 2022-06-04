resource "azurerm_virtual_network" "vnt_demo" {
  address_space       = var.vnt_address_space
  location            = var.location
  name                = upper("${local.upper_resource_prefix}-VNT")
  resource_group_name = azurerm_resource_group.rgp_net.name
}
