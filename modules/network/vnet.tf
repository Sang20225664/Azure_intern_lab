resource "azurerm_virtual_network" "main_vnet" {
  name                = "${var.prefix}-vnet"
  address_space       = [var.vnet_cidr]
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.default_tags

  subnet {
    name             = "subnet_private_endpoint"
    address_prefixes = [cidrsubnet(var.vnet_cidr, 8, 1)]
    security_group   = azurerm_network_security_group.private_endpoint_nsg.id
  }

  subnet {
    name             = "subnet_app_gateway"
    address_prefixes = [cidrsubnet(var.vnet_cidr, 8, 2)]
    security_group   = azurerm_network_security_group.app_gw_nsg.id
  }
  subnet {
    name             = "subnet_vnet_integration"
    address_prefixes = [cidrsubnet(var.vnet_cidr, 8, 3)]
    security_group   = azurerm_network_security_group.vnet_integration_nsg.id
  }
}
