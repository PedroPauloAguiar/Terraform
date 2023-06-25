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
    key                  = "azure-resource-group-for-each/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}