
data "azurerm_resource_group" "rgdatablock" {
  name = "rg-admin"
}

data "azurerm_key_vault" "key_data_block" {
  name                = "adminkumarbhardwajkey"
  resource_group_name = data.azurerm_resource_group.rgdatablock.name
}

