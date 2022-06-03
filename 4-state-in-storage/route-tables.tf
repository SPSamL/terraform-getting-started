resource "azurerm_route_table" "udr-web" {
  location                      = var.location
  name                          = upper("${local.upper-resource-prefix}-UDR-WEB")
  resource_group_name           = azurerm_resource_group.net-rgp.name
  disable_bgp_route_propagation = true

  route {
    name           = "default"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "Internet"
  }
}
resource "azurerm_subnet_route_table_association" "udr-web-association" {
  route_table_id = azurerm_route_table.udr-web.id
  subnet_id      = azurerm_subnet.snt-web.id
}

resource "azurerm_route_table" "udr-dev" {
  location                      = var.location
  name                          = upper("${local.upper-resource-prefix}-UDR-DEV")
  resource_group_name           = azurerm_resource_group.net-rgp.name
  disable_bgp_route_propagation = true

  route {
    name           = "default"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "Internet"
  }
}
resource "azurerm_subnet_route_table_association" "udr-dev-association" {
  route_table_id = azurerm_route_table.udr-dev.id
  subnet_id      = azurerm_subnet.snt-dev.id
}
