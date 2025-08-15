module "rg" {
    source              = "../azure_resource_group"
    resource_group_name = "prod-rg"
    location            = "east us"
  }

module "aks" {
    source              = "../azurerm_aks"
    resource_group_name = "prod-rg"
    location            = "east us"
    aks_name            = "prod-aks"
    dns_prefix          = "prodaks"
    node_count          = 3
    acr_id              = module.acr.acr_id
  }

module "acr" {
    source              = "../azurerm_acr"
    resource_group_name = "prod-rg"
    location            = "east us"
    acr_name            = "prodacr"
  }

