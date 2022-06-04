locals {
  upper_resource_prefix = upper("${var.name_unit}-${var.name_app}-${var.name_env}")
  lower_resource_prefix = lower("${var.name_unit}${var.name_app}${var.name_env}")
}
