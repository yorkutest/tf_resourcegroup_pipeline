module "rg" {
  source                = "git::https://github.com/yorkutest/tf_resourcegroup_module?ref=release/v0.2"
  resourceGroupName     = var.resourceGroupName
  resourceGroupLocation = var.resourceGroupLocation
  tags                  = var.tags
}

