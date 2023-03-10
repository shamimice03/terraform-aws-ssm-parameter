resource "aws_ssm_parameter" "parameter" {
  for_each    = { for i in var.parameters : i.name => i }
  name        = each.value.name
  description = each.value.description
  type        = each.value.type
  value       = each.value.value
  key_id      = each.value.key_alias
  tags        = each.value.tags

  overwrite = var.overwrite
}


