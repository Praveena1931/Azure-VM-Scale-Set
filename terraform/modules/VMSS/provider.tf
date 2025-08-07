provider "azurerm" {
  features {} 
}

# resource "azurerm_resource_group" "example" {
#   name     = "example-resources"
#   location = "East US"
# }

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
