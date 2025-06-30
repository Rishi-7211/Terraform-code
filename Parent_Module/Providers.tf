terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Rishi_RG"
    storage_account_name = "todostorageacct72" # Must be globally unique
    container_name       = "rishicontainer72"
    key                  = "terraform1.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "487338b8-efff-44d0-bfb9-fd621c994584"
}