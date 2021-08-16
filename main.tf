terraform {
  //required_version = "~> 0.14.0"
  required_providers {
    azurerm = "~> 2.71.0"
  }
  backend "azurerm" {
    storage_account_name = "xortfstate01"
    container_name       = "defaultrg"
    key                  = "dev.tfstate"
    access_key           = "LPs2BPXpBxTekaOU/yQwGEMIlBjJA4vYIxekA2iJFLdTmmaHCxWVzKgsgb3uEeTXh/tmTiu9KQueZmzygvpx3Q=="
  }
}

provider "azurerm" {
  # skip provider rego because we are using a service principal with limited access to Azure
  subscription_id            = "473c3c84-a93a-48ff-b941-a43159f5f9b7"
  client_id                  = "94636534-be4e-4253-9e7b-beb0ba5acda8"
  client_secret              = var.client_secret
  tenant_id                  = "7c10e4ef-1eb3-403a-9af7-c0aae38648ef"
  skip_provider_registration = "true"
  features {}
}

module "ResourceGroups" {
  source            = "./modules/ResourceGroup"
  resource_grp_list = var.resource_group_list
}
//C:/Users/Subod/Desktop/Xoriant_Code/Github/InfraPipeline

module "StorageAccount" {
  source           = "./modules/StorageAccount"
  storage_acc_list = var.storage_account_list
}
