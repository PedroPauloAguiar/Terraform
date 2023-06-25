output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "security_group_id" {
  value = azurerm_network_security_group.nsg.id
}