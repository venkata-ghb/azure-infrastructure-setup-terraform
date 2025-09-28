resource "azurerm_policy_definition" "custom" {
  name = var.policy_name
  display_name = var.display_name
  policy_type = "Custom"
  mode = var.policy_mode
  description = var.description
  policy_rule = jsonencode({
    if = {
        field   = "type"
        notEquals = "Microsft.Authorization/policyAssignments0"
    }
    then = {
        effect = "deny"
    }
  })
}

resource "azurerm_resource_policy_assignment" "pol_assignments" {
  for_each = var.resource_group_ids
  name = var.assignment_name
  resource_id = each.value
  policy_definition_id = azurerm_policy_definition.custom.id
  enforce = var.enforce
}