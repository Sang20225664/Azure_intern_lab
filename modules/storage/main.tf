# Storage Account
resource "azurerm_storage_account" "main" {
  name                            = "${var.prefix}storage"
  resource_group_name             = var.rg_name
  location                        = var.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = var.default_tags
}

# Blob Container 
resource "azurerm_storage_container" "app_container" {
  name                  = "app-container"
  storage_account_id    = azurerm_storage_account.main.id
  container_access_type = "private"
}
