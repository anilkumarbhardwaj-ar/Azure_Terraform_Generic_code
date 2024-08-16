
resource "azurerm_key_vault_secret" "secret_block" {
    for_each = var.key
    
  name         = each.value.name
  value        = each.value.vname
  key_vault_id = data.azurerm_key_vault.key_data_block.id
}
