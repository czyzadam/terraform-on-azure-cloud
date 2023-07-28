# Bastion Linux VM Input Variables Placeholder file.
variable "bastion_service_subnet_name" {
    description = " Bastion Service Subnet Name"
    default = "AzureBastionSubnet"
  }

variable "bastion_service_address_prefixes" {
    description = "Bastion Service Adresss Prefixes"
    default = ["10.0.101.0/27"]
  
}