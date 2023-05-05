module "rg" {
  source = "git::https://github.com/yorkutest/tf_resourcegroup_pipeline?ref=maxtest"
  resourceGroupName     = var.resourceGroupName
  resourceGroupLocation = var.resourceGroupLocation
  tags                  = var.tags
}
