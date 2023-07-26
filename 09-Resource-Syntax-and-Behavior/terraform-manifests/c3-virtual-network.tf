# Resource-2: Create Virtual Network
resource "azurerm_virtual_network" "myvnet1" {
name = "myvnet1-net"
address_space = ["10.0.0.0/16" ]
location            = azurerm_resource_group.myrg.location
resource_group_name = azurerm_resource_group.myrg.name
tags = {
  "Name" = "MyVnet"
  "Env" = "dev"
  }
}

resource "azurerm_subnet" "mysubnet" {
name = "mysubnet1"
resource_group_name = azurerm_resource_group.myrg.name
virtual_network_name = azurerm_virtual_network.myvnet1.name
 address_prefixes =  ["10.0.1.0/24"]  
}


resource "azurerm_public_ip" "pubip" {
name = "testpubip"
resource_group_name = azurerm_resource_group.myrg.name
location = azurerm_resource_group.myrg.location
allocation_method = "Static"
tags = {
  "env" = "dev"
}
}

resource "azurerm_network_interface" "nic1" {
name = "testnic2"
resource_group_name = azurerm_resource_group.myrg.name
location = azurerm_resource_group.myrg.location

  ip_configuration {
    name = "internal"
    subnet_id = azurerm_subnet.mysubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.pubip.id
      }
}
