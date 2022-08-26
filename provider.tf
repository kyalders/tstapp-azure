terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  cloud {
    organization = "kylesbx"
    workspaces {
      tags = ["env:#{environment}#", "app:tst-app-kyle", "platform:azure"]
    }
  }
}
# Configure the Microsoft Azure Provider (azurerm provider) in provider blocks.
provider "azurerm" {
  features {}
}
