variable "name_unit" {
  type    = string
  default = "SL"
}

variable "name_app" {
  type = string
}

variable "name_env" {
  type = string
}

variable "location" {
  type = string
}

variable "vnt_address_space" {
  type = list(string)
}

variable "snt_web_address_space" {
  type = list(string)
}

variable "snt_dev_address_space" {
  type = list(string)
}
