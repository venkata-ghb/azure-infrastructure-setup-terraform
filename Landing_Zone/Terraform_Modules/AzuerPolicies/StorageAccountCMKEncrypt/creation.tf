resource "azurerm_management_group_policy_assignment" "pol_assignment" {
  name = var.name
  policy_definition_id = var.policy_definition_id
  management_group_id = var.management_group_id
  enforce = var.enforce
  parameters = jsondecode({
    "effect" : {
        value = var.effect
    }
  })
}