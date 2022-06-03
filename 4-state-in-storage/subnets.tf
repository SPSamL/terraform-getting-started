resource "azurerm_subnet" "snt-web" {
  name                 = upper("${local.upper-resource-prefix}-SNT-WEB")
  resource_group_name  = azurerm_resource_group.net-rgp.name
  virtual_network_name = azurerm_virtual_network.demo-vnt.name
  address_prefixes     = var.snt-web-address-space
}

resource "azurerm_subnet" "snt-dev" {
  name                 = upper("${local.upper-resource-prefix}-SNT-DEV")
  resource_group_name  = azurerm_resource_group.net-rgp.name
  virtual_network_name = azurerm_virtual_network.demo-vnt.name
  address_prefixes     = var.snt-dev-address-space
}
