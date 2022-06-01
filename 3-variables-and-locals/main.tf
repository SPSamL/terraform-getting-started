locals {
  upper-resource-prefix = upper("${var.name-unit}-${var.name-app}-${var.name-env}")
  lower-resource-prefix = lower("${var.name-unit}${var.name-app}${var.name-env}")
}

resource "azurerm_resource_group" "net-rgp" {
  location = var.location
  name     = upper("${local.upper-resource-prefix}-RGP-NET")
}

resource "azurerm_resource_group" "cor-rgp" {
  location = var.location
  name     = upper("${local.upper-resource-prefix}-RGP-COR")
}

resource "azurerm_virtual_network" "demo-vnt" {
  address_space       = var.vnt-address-space
  location            = var.location
  name                = upper("${local.upper-resource-prefix}-VNT")
  resource_group_name = azurerm_resource_group.net-rgp.name
}
