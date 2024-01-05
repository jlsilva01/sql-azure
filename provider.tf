terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    ipify = {
      source  = "rerichardjr/ipify"
      version = "1.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "ipify" {
  # Configuration options
}