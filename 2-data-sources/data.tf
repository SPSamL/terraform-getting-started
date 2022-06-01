data "azurerm_resource_group" "demo-rgp" {
  name = "DEMO-RGP"

}

data "azurerm_virtual_network" "demo-vnt" {
  name                = "DEMO-VNT"
  resource_group_name = "DEMO-RGP"
}
