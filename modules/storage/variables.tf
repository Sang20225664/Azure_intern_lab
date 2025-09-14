//modules/network/variables.tf
variable "prefix" {
  type = string
}

variable "location" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "default_tags" {
  type = map(string)
}
