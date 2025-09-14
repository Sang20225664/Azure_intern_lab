output "sql_server_id" {
  value = azurerm_mssql_server.main.id
}

output "sql_fqdn" {
  value = azurerm_mssql_server.main.fully_qualified_domain_name
}

output "sql_db_name" {
  value = azurerm_mssql_database.main.name
}
output "sql_connection_string" {
  value     = "Server=tcp:${azurerm_mssql_server.main.fully_qualified_domain_name},1433;Initial Catalog=${azurerm_mssql_database.main.name};Persist Security Info=False;User ID=${var.sql_admin_login};Password=${var.sql_admin_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
  sensitive = true
}

