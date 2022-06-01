resource "azurerm_resource_group" "net-rgp" {
  location = var.location
  name     = upper("${local.upper-resource-prefix}-RGP-NET")
}

resource "azurerm_resource_group" "cor-rgp" {
  location = var.location
  name     = upper("${local.upper-resource-prefix}-RGP-COR")
}
