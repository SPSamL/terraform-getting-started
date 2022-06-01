resource "azurerm_subnet" "demo-snt" {
  name                 = "DEMO-SNT"
  resource_group_name  = data.azurerm_resource_group.demo-rgp.name
  virtual_network_name = data.azurerm_virtual_network.demo-vnt.name
  address_prefixes     = ["10.0.0.0/28"]
}
