terraform {
  required_providers {
    azurerm = ">= 2.28"
  }

  backend "azurerm" {
    storage_account_name = "xortfstate01"
    container_name       = "terraformstate"
    key                  = "dev.tfstate"
    access_key           = "LPs2BPXpBxTekaOU/yQwGEMIlBjJA4vYIxekA2iJFLdTmmaHCxWVzKgsgb3uEeTXh/tmTiu9KQueZmzygvpx3Q=="
  }
}

provider "azurerm" {
  features {}
  subscription_id            = var.subscription_id
  client_id                  = "94636534-be4e-4253-9e7b-beb0ba5acda8"
  client_secret              = var.client_secret
  tenant_id                  = "7c10e4ef-1eb3-403a-9af7-c0aae38648ef"
  skip_provider_registration = "true"
}
