output "parameter_names" {
  value       = [for p in aws_ssm_parameter.parameter : p.name]
  description = "A list of parameter names extracted from the aws_ssm_parameter resources."
}

output "parameter_values" {
  value       = [for p in aws_ssm_parameter.parameter : p.value]
  sensitive   = true
  description = "A list of parameter values extracted from the aws_ssm_parameter resources. These values are treated as sensitive."
}

output "parameters" {
  value = {
    for key, parameter in aws_ssm_parameter.parameter : key => parameter.value
  }
  sensitive   = true
  description = "A list of parameters extracted from the aws_ssm_parameter resources. These values are treated as sensitive."
}

