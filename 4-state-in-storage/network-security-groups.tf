resource "azurerm_network_security_group" "nsg-web" {
  location            = var.location
  name                = upper("${local.upper-resource-prefix}-NSG-WEB")
  resource_group_name = azurerm_resource_group.net-rgp.name
}

resource "azurerm_subnet_network_security_group_association" "nsg-web-association" {
  network_security_group_id = azurerm_network_security_group.nsg-web.id
  subnet_id                 = azurerm_subnet.snt-web.id
}

resource "azurerm_network_security_group" "nsg-dev" {
  location            = var.location
  name                = upper("${local.upper-resource-prefix}-NSG-DEV")
  resource_group_name = azurerm_resource_group.net-rgp.name
}

resource "azurerm_subnet_network_security_group_association" "nsg-dev-association" {
  network_security_group_id = azurerm_network_security_group.nsg-dev.id
  subnet_id                 = azurerm_subnet.snt-dev.id
}
