locals {
  upper_resource_prefix = upper("${var.name_unit}-${var.name_app}-${var.name_env}")
  lower_resource_prefix = lower("${var.name_unit}${var.name_app}${var.name_env}")
}

resource "azurerm_resource_group" "rgp_net" {
  location = var.location
  name     = upper("${local.upper_resource_prefix}-RGP-NET")
}

resource "azurerm_resource_group" "rgp_cor" {
  location = var.location
  name     = upper("${local.upper_resource_prefix}-RGP-COR")
}

resource "azurerm_virtual_network" "vnt_demo" {
  address_space       = var.vnt_address_space
  location            = var.location
  name                = upper("${local.upper_resource_prefix}-VNT")
  resource_group_name = azurerm_resource_group.rgp_net.name
}
