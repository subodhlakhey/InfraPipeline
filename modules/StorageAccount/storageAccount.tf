resource "azurerm_storage_account" "asa" {
  for_each                 = { for k in var.storage_acc_list : k.sa_name => k }
  name                     = each.key
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = lookup(each.value, "account_tier", "Standard")
  account_replication_type = lookup(each.value, "account_replication_type", "GRS")
  tags = {
    environment = "development"
  }
}