provider "azurerm" {
	features {}
}

module "azure_aks" {
	source = "./aks-module"
	tags = {
		environment = "dev"
		project = "terraform-aks"
	}
	resource_group_name = "myResourceGroup"
	location = "East US"
	kubernetes_version = "1.28.1"
	dns_prefix = "myakscluster"
	admin_username = "azure_user"
	ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzHm8mgE/gi8uRs/FTobpHvCqzSt8wEqzLfbtRj03puO4sERbOZ8+W8fqiJA32YPLUe2/7cqHW5MtlvJZ47C89aZkVXcs3HN3/PqTHHJM5MT74lcGZH6zSethyFirsfaSLQMwY4J6AKrupvr4PYdnivUUgtJFWwVB7JUwm8gdDFLWGWuw0tnOz48EGJI1Wqz/kAGDnj1r0hXttdaRRlYlhVfbCEm47XbISvBvcZnmzM0tHlWcKsDjVc6XE/Ih2eyXLf4Jg7vWqQW6WwiWcFJi1CEApb6GLqKngHDPbK5Vdk7d6swDgHsQT7MBsDqQCu64ciND1tuxzYUYXILDhs3l0dozhIat79209hVHGP3REa5y6Zr78ndGh0bNa4d/eJhcZnQzUtB3C0DYLRfOxmYYNzhYqPOTvjZEyAZ/axFrjg6gjWA2+HvTIQxsIGgAO0KnC+j5/Vy+XnVWt/63U38dyyXkRt7olU0g51WsYPhJK8FpMUFmJol/eq4yys1Ustf8= pulkit@niit-vm3"
	default_node_count = 3
	vm_size = "Standard_D2s_v3"
	os_disk_size = 30
	aks_cluster_name = "DemoAKS"
}

output "kube_config" {
    value = module.azure_aks.kube_config
    sensitive = true
}
