module "rg" {
  source                = "git::https://github.com/yorkutest/tf_resourcegroup_module?ref=v0.1"
  resourceGroupName     = var.resourceGroupName
  resourceGroupLocation = var.resourceGroupLocation
  tags                  = var.tags
}

