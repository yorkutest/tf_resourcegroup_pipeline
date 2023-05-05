module "rg" {
  source                = "git@github.com:yorkutest/tf_resourcegroup_module?ref=maxtest"
  resourceGroupName     = var.resourceGroupName
  resourceGroupLocation = var.resourceGroupLocation
  tags                  = var.tags
}
