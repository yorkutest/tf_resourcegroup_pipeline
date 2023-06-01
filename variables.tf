variable "subscriptionId" {
  type = string
}

variable "resourceGroupName" {
  type = string
}

variable "resourceGroupLocation" {
  type    = string
  default = "canadacentral"
}

variable "tags" {
  type = map(string)
}
