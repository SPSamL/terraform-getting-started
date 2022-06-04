data "azurerm_resource_group" "rgp_demo" {
  name = "DEMO-RGP"

}

data "azurerm_virtual_network" "vnt_demo" {
  name                = "DEMO-VNT"
  resource_group_name = "DEMO-RGP"
}
