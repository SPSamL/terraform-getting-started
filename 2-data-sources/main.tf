resource "azurerm_subnet" "snt_demo" {
  name                 = "DEMO-SNT"
  resource_group_name  = data.azurerm_resource_group.rgp_demo.name
  virtual_network_name = data.azurerm_virtual_network.vnt_demo.name
  address_prefixes     = ["10.0.0.0/28"]
}
