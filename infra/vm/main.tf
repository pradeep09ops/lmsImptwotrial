provider "azurerm" {
	features {}
}

module "azure_vm" {
	source = "./vm-module"
	
	resource_group_name = "myrg"
	vm_count = 1
	location = "East US"
	vnet_name = "myvnet"
	vnet_address_space = "10.0.0.0/16"
	subnet_name = "mysnet"
	subnet_prefix = "10.0.1.0/24"
	nic_name = "mynic"
	vm_name_prefix = "mynode"
	vm_name = "mynode"
	vm_size = "Standard_DS1_v2"
	admin_username = "adminuser"
	admin_password = "P@ssword123"
	path = "/home/adminuser/.ssh/authorized_keys"
	key_data = file("C:/Users/pulkit/.ssh/id_rsa.pub")
}