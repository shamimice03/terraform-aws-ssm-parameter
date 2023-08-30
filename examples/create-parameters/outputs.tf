output "parameters" {
  description = "A list of parameters extracted from the aws_ssm_parameter resources. These values are treated as sensitive."
  sensitive = true
  value = module.demo_parameters.parameters
}
