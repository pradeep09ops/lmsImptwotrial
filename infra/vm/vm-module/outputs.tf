output "vm_ids" {
	description = "The virtual machine IDS"
	value = azurerm_virtual_machine.vm[*].id
}

output "public_ips" {
	description = "Public IPs of virtual machines"
	value = azurerm_public_ip.vm_public_ip[*].ip_address
}