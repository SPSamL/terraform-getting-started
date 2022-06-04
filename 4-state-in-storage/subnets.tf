resource "azurerm_subnet" "snt_web" {
  name                 = upper("${local.upper_resource_prefix}-SNT-WEB")
  resource_group_name  = azurerm_resource_group.rgp_net.name
  virtual_network_name = azurerm_virtual_network.vnt_demo.name
  address_prefixes     = var.snt_web_address_space
}

resource "azurerm_subnet" "snt_dev" {
  name                 = upper("${local.upper_resource_prefix}-SNT-DEV")
  resource_group_name  = azurerm_resource_group.rgp_net.name
  virtual_network_name = azurerm_virtual_network.vnt_demo.name
  address_prefixes     = var.snt_dev_address_space
}
