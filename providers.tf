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
  subscription_id            = "473c3c84-a93a-48ff-b941-a43159f5f9b7"
  client_id                  = "94636534-be4e-4253-9e7b-beb0ba5acda8"
  client_secret              = var.client_secret
  tenant_id                  = "7c10e4ef-1eb3-403a-9af7-c0aae38648ef"
  skip_provider_registration = "true"
}
