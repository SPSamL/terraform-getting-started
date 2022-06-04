resource "azurerm_route_table" "udr_web" {
  location                      = var.location
  name                          = upper("${local.upper_resource_prefix}-UDR-WEB")
  resource_group_name           = azurerm_resource_group.rgp_net.name
  disable_bgp_route_propagation = true

  route {
    name           = "default"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "Internet"
  }
}
resource "azurerm_subnet_route_table_association" "udr_web_association" {
  route_table_id = azurerm_route_table.udr_web.id
  subnet_id      = azurerm_subnet.snt_web.id
}

resource "azurerm_route_table" "udr_dev" {
  location                      = var.location
  name                          = upper("${local.upper_resource_prefix}-UDR-DEV")
  resource_group_name           = azurerm_resource_group.rgp_net.name
  disable_bgp_route_propagation = true

  route {
    name           = "default"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "Internet"
  }
}
resource "azurerm_subnet_route_table_association" "udr_dev_association" {
  route_table_id = azurerm_route_table.udr_dev.id
  subnet_id      = azurerm_subnet.snt_dev.id
}
