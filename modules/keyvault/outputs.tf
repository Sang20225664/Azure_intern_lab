output "key_vault_id" {
  value = azurerm_key_vault.main.id
}

output "key_vault_name" {
  value = azurerm_key_vault.main.name
}

output "secret_name" {
  value = azurerm_key_vault_secret.db_connection.name
}

output "secret_value" {
  value     = azurerm_key_vault_secret.db_connection.value
  sensitive = true
}
