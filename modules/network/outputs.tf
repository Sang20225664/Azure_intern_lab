#output vnet
output "vnet_id" {
  value       = azurerm_virtual_network.main_vnet.id
  description = "The ID of the Virtual Network"
}
output "vnet_name" {
  value       = azurerm_virtual_network.main_vnet.name
  description = "The name of the Virtual Network"
}

#output nsg
output "app_gw_nsg_id" {
  value       = azurerm_network_security_group.app_gw_nsg.id
  description = "The ID of the Network Security Group"
}

output "vnet_integration_nsg_id" {
  value       = azurerm_network_security_group.vnet_integration_nsg.id
  description = "The name of the Network Security Group"
}

output "private_endpoint_nsg_id" {
  value       = azurerm_network_security_group.private_endpoint_nsg.id
  description = "The name of the Network Security Group"
}

