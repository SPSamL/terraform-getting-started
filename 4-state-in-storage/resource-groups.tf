resource "azurerm_resource_group" "rgp_net" {
  location = var.location
  name     = upper("${local.upper_resource_prefix}-RGP-NET")
}

resource "azurerm_resource_group" "rgp_cor" {
  location = var.location
  name     = upper("${local.upper_resource_prefix}-RGP-COR")
}
