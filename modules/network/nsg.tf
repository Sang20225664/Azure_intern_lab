resource "azurerm_network_security_group" "app_gw_nsg" {
  name                = "${var.prefix}-appgw-nsg"
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.default_tags
}

resource "azurerm_network_security_group" "vnet_integration_nsg" {
  name                = "${var.prefix}-vnetint-nsg"
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.default_tags
}

resource "azurerm_network_security_group" "private_endpoint_nsg" {
  name                = "${var.prefix}-pe-nsg"
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.default_tags
}
