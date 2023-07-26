#Virtual netwoork address space

variable "vnet_name" {
  description = "Virtual Network Name"
  type = string
  default = "vnet-default"
}
variable "vnet_address_space" {
    description = "Vnet address space"
    type = list(string)
    default = ["10.0.0.0/16"]
}

#Web subnet 
variable "web_subnet_name" {
  description = "Virtual network web Subnet  Name"
  type = string
  default = "websubnet"
}
variable "web_subnet_address" {
  description = "Virtual network web Subnet  Address"
  type = list(string)
  default = ["10.0.1.0/24"]
}

#APP subnet 
variable "app_subnet_name" {
  description = "Virtual network APP Subnet  Name"
  type = string
  default = "appsubnet"
}
variable "app_subnet_address" {
  description = "Virtual network APP Subnet  Address"
  type = list(string)
  default = ["10.0.11.0/24"]
}

#DB subnet 
variable "db_subnet_name" {
  description = "Virtual network DB Subnet  Name"
  type = string
  default = "dbsubnet"
}
variable "db_subnet_address" {
  description = "Virtual network DB Subnet  Address"
  type = list(string)
  default = ["10.0.21.0/24"]
}
#BASTION / management subnet 
variable "bastion_subnet_name" {
  description = "Virtual network BASTION Subnet  Name"
  type = string
  default = "dbsubnet"
}
variable "bastion_subnet_address" {
  description = "Virtual network BASTION Subnet  Address"
  type = list(string)
  default = ["10.0.100.0/24"]
}