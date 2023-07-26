#Generic input varables
#Bussiness division
variable "business_divsion" {
  description = "Business division this organization belongs to"
  type = string
  default = "sap"
}

#Envinronment
variable "environment" {
    description = "Environment variable"
    type = string
    default = "dev"
}

#Azure resource group name
variable "resource_group_name" {
  description = "Resource group name"
  type = string
  default = "rg-default"
}

#Azure resources location
variable "resource_group_location" {
    description = "Resources location region"
  default = "polandcentral"
}
