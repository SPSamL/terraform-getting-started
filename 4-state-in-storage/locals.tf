locals {
  upper-resource-prefix = upper("${var.name-unit}-${var.name-app}-${var.name-env}")
  lower-resource-prefix = lower("${var.name-unit}${var.name-app}${var.name-env}")
}
