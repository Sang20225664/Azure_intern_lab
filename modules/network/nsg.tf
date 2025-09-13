//modules/network/nsg.tf

resource "azurerm_network_security_group" "appservice_nsg" {
  name                = "${var.prefix}-appservice-nsg"
  location            = var.location
  resource_group_name = var.rg_name

  tags = var.default_tags
}

resource "azurerm_network_security_group" "db_nsg" {
  name                = "${var.prefix}-db-nsg"
  location            = var.location
  resource_group_name = var.rg_name

  tags = var.default_tags
}

resource "azurerm_network_security_group" "kv_nsg" {
  name                = "${var.prefix}-kv-nsg"
  location            = var.location
  resource_group_name = var.rg_name

  tags = var.default_tags
}

resource "azurerm_network_security_group" "storage_nsg" {
  name                = "${var.prefix}-storage-nsg"
  location            = var.location
  resource_group_name = var.rg_name

  tags = var.default_tags
}
