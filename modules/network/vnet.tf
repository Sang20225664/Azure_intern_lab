resource "azurerm_virtual_network" "main_vnet" {
  name                = "${var.prefix}-vnet"
  address_space       = [var.vnet_cidr]
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.default_tags
}
