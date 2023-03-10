output "parameter_names" {
  value = [for p in aws_ssm_parameter.parameter : p.name]
}


output "parameter_values" {
  value     = [for p in aws_ssm_parameter.parameter : p.value]
  sensitive = true
}
