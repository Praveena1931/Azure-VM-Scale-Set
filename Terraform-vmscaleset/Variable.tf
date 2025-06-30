variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "vmss-rg"
}   

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "C:/Users/mi/.ssh/id_rsa.pub"
}

variable "admin_username" {
  description = "Admin username for the VMSS instances"
  type        = string
  default     = "azureuser"  # You can change this or remove `default` to make it required
}
#variable "admin_user" {
#  default = "azureuser"
#}

#variable "admin_password" {
#  sensitive = true
#}