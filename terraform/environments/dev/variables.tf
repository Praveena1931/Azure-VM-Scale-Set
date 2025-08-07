variable "location" {
  description = "Location if the resource group"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}   

variable "ssh_public_key" {
  description = "Path to the SSH public key"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  default     = "vmss-vnet"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet for the virtual network."
  type        = string
  default     = "vmss-subnet"
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "vmss_name" {
  description = "The name of the Linux Virtual Machine Scale Set."
  type        = string
  default     = "algorims-vmss"
}

variable "vmss_sku" {
  description = "The SKU for the Virtual Machine Scale Set."
  type        = string
  default     = "Standard_DS1_v2"
}

variable "vmss_instances" {
  description = "The number of instances for the VMSS."
  type        = number
  default     = 2
}

variable "network_interface_name" {
  description = "The name of the network interface for the VMSS."
  type        = string
  default     = "algorims-nic"
}


variable "admin_username" {
  description = "Admin username for the VMSS instances"
  type        = string
 }

#  variable "subscription_id" {
#   description = "Azure Subscription ID"
#   type        = string
#   default = "7f16aeca-0ad0-4844-845d-fad64868f677"
# }

variable "tags" {
  type = map(string)
}