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

variable "sql_connection_string" {
  type        = string
  description = "The SQL connection string to store in Key Vault"
}

variable "secret_name" {
  type        = string
  default     = "sql-connection-string"
  description = "Name of the secret in Key Vault"
}
