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

variable "admin_username" {
  description = "Admin username for the VMSS instances"
  type        = string
 }

 variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default = "7f16aeca-0ad0-4844-845d-fad64868f677"
}
