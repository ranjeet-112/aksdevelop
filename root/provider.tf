terraform {
    backend "azurerm" {
        resource_group_name  = "my-rg-stg"
        storage_account_name = "stgranjeet"
        container_name       = "mycontainer"
        key                  = "terraform.tfstate"
    }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9a19641f-a0da-455d-9b90-51dc0d0cdfee"
}