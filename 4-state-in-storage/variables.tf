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

variable "snt-web-address-space" {
  type = list(string)
}

variable "snt-dev-address-space" {
  type = list(string)
}
