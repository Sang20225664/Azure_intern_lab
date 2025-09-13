variable "prefix" {
  type    = string
  default = "sanglab"
}
variable "location" {
  type    = string
  default = "southeastasia"
}
variable "rg_name" {
  type    = string
  default = "sangndt1-devops-intern"
}
variable "vnet_cidr" {
  type    = string
  default = "10.10.0.0/16"
}
variable "default_tags" {
  type = map(string)
  default = {
    Environment = "DEV"
    Region      = "Southeast Asia"
  }
}
variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

