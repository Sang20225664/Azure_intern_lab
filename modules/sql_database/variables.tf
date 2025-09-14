variable "prefix" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "default_tags" {
  type = map(string)
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
