variable "name-unit" {
  type    = string
  default = "SL"
}

variable "name-app" {
  type = string
}

variable "name-env" {
  type = string
}

variable "location" {
  type = string
}

variable "vnt-address-space" {
  type = list(string)
}
