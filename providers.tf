terraform {
  required_version = "1.4.6"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.55.0"
    }
  }
  backend "azurerm" {
  }
}

#provider "azurerm" {
#  features {}
#  skip_provider_registration = true
#  use_msi                    = true
#  subscription_id            = var.subscriptionId
#}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = var.subscriptionId
  use_oidc                   = true

  # for GitHub Actions
  oidc_request_token = var.oidc_request_token
  oidc_request_url   = var.oidc_request_url

}

