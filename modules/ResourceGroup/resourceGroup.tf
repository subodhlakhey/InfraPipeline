resource "azurerm_resource_group" "arg" {
  for_each = { for k in var.resource_grp_list : k.rg_name => k }
  name     = each.key
  location = each.value.location
}