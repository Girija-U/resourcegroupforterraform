terraform { 
  cloud { 
    
    organization = "girijau25" 

    workspaces { 
      name = "localfile" 
    } 
  } 
}
terraform {
required_providers {
azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
features {}
client_id="dd580511-ec92-4516-874e-b8a87100fb6c"
client_secret="V.18Q~vq7fWIrARbKB3BTir1DQVrkKclIrMHyaTM"
tenant_id="7597b8dc-1559-4285-901d-856b7ac20009"
subscription_id="6babc3f8-793c-4200-9aa3-51e8d33ff572"
}

variable "rgname" {
  default = "terraformrggu123"
}
variable "location" {
  default = "West US 3"
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
