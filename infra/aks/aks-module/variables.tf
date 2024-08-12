variable "aks_cluster_name" {
    description = "The name of the cluster"
    type = string
}

variable "location" {
    description = "The azure region to deploy"
    type = string
}

variable "resource_group_name" {
    description = "The resource group name"
    type = string
}

variable "dns_prefix" {
    description = "The dns prefix of the aks cluster"
    type = string
}

variable "admin_username" {
    description = "The admin username of the aks nodes"
    type = string
}

variable "ssh_public_key" {
    description = "The ssh public key"
    type = string
}

variable "default_node_count" {
    description = "The node count in the default node pool"
    type = number
    default = 3
}

variable "vm_size" {
    description = "The size of the vms in the default node pool"
    default = "Standard_DS2_v2"
}

variable "os_disk_size" {
    description = "The os disk size"
    type = number
}

variable "tags" {
    description = "Tags to apply resources"
    type = map(string)
    default = {
        environment = "dev"
        project = "terraform-aks"
    }
}

variable "kubernetes_version" {
    description = "The kubernetes version"
    default = "1.28.1"
}