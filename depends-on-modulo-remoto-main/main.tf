terraform {

  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.94.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "danielgilremotestate"
    container_name       = "remote-state"
    key                  = "azure-vm-modulo-remoto/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "3.5.0"

  depends_on = [azurerm_resource_group.resource_group]

  resource_group_name = azurerm_resource_group.resource_group.name
}