# SQL Server
resource "azurerm_mssql_server" "main" {
  name                         = "${var.prefix}-sqlserver"
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password
  minimum_tls_version          = "1.2"

  tags = var.default_tags
}

# SQL Database
resource "azurerm_mssql_database" "main" {
  name           = "${var.prefix}-db"
  server_id      = azurerm_mssql_server.main.id
  sku_name       = "S0" # Standard tier
  zone_redundant = false

  tags = var.default_tags
}
