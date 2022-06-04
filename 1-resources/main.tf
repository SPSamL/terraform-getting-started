##################################################
# Create a Resource Group
##################################################

resource "azurerm_resource_group" "rgp_demo" {
  location = "centralus"
  name     = "DEMO-RGP"
}

##################################################
# Creat a VNET in Resource Group
##################################################

resource "azurerm_virtual_network" "vnt_demo" {
  address_space       = ["10.0.0.0/24"]
  location            = "centralus"
  name                = "DEMO-VNT"
  resource_group_name = azurerm_resource_group.rgp_demo.name
}
