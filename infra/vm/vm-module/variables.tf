variable "resource_group_name"{
	description = "resource group name"
	type = string
}

variable "subnet_name" {
	description = "subnet name"
	type = string
}

variable "subnet_prefix" {
	description = "sunet prefix"
	type = string
}

variable "vnet_name" {
	description = "virtual network name"
	type = string
}

variable "nic_name" {
	description = "network_interface_name"
	type = string
}

variable "vm_name" {
	description = "virtual machine name"
	type = string
}

variable "vm_size" {
	description = "virtual machine size"
	type = string
}

variable "admin_username" {
	description = "admin user name"
	type = string
}

variable "admin_password" {
	description = "admin password"
	type = string
}

variable "path" {
	description = "path for ssh keys"
	type = string
}

variable "key_data" {
	description = "Public ssh key"
	type = string
}

variable "vm_count" {
	description = "number of virtual machines to be spin up"
	type = number
}

variable "vm_name_prefix" {
	description = "virtual machine name prefix"
	type = string
}

variable "location" {
	description = "location details"
	type = string
}

variable "vnet_address_space" {
	description = "virtual network address space"
	type = string
}
