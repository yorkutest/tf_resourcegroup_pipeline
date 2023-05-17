###### Required variables for the provider  ############
variable "oidc_request_token" {
  type = string
}
variable "oidc_request_url" {
  type = string
}

###### End: Required variables for the provider  ########



variable "resourceGroupName" {
  type = string
}
variable "subscriptionId" {
  type = string
}

variable "resourceGroupLocation" {
  type    = string
  default = "canadacentral"
}

variable "tags" {
  type = map(string)
}
