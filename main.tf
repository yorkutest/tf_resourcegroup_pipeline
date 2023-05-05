module "rg" {
  source                = "git::https://github.com/yorkutest/tf_resourcegroup_module?ref=main"
  resourceGroupName     = var.resourceGroupName
  resourceGroupLocation = var.resourceGroupLocation
  tags                  = var.tags
}
