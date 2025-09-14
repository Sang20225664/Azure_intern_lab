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

variable "sql_admin_login" {
  type        = string
  description = "Admin login for SQL Server"
}
variable "sql_admin_password" {
  type        = string
  description = "Admin password for SQL Server"
  sensitive   = true
}

variable "keyvault_secret_name" {
  type    = string
  default = "sql-connection"
}
