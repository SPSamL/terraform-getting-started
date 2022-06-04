resource "azurerm_network_security_group" "nsg_web" {
  location            = var.location
  name                = upper("${local.upper_resource_prefix}-NSG-WEB")
  resource_group_name = azurerm_resource_group.rgp_net.name
}

resource "azurerm_subnet_network_security_group_association" "nsg_web_association" {
  network_security_group_id = azurerm_network_security_group.nsg_web.id
  subnet_id                 = azurerm_subnet.snt_web.id
}

resource "azurerm_network_security_group" "nsg_dev" {
  location            = var.location
  name                = upper("${local.upper_resource_prefix}-NSG-DEV")
  resource_group_name = azurerm_resource_group.rgp_net.name
}

resource "azurerm_subnet_network_security_group_association" "nsg_dev_association" {
  network_security_group_id = azurerm_network_security_group.nsg_dev.id
  subnet_id                 = azurerm_subnet.snt_dev.id
}
