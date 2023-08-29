## Terraform module to store parameters on `AWS SSM Parameter Store`
### Usage

```hcl
module "parameters" {

  source = "shamimice03/ssm-parameter/aws"

  parameters = [
    {
      name        = "/webapp/db/username"
      type        = "String"
      description = "Parameter for webapp"
      value       = "admin"
      tags = {
        "Name" = "webapp-params"
      }
    },
    {
      name        = "/webapp/db/role"
      type        = "StringList"
      description = "Parameter for webapp"
      value       = "create,delete"
      tags = {
        "Name" = "webapp-params"
      }
    },
    {
      name        = "/webapp/db/password"
      type        = "SecureString"
      description = "Parameter for webapp"
      value       = "Password"
      key_alias   = "alias/aws/ssm"
      tags = {
        "Name" = "webapp-params"
      }
    },
  ]
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_parameters"></a> [parameters](#input\_parameters) | List of Parameters | <pre>list(object({<br>    name        = string<br>    description = optional(string)<br>    type        = string<br>    value       = string<br>    key_alias   = optional(string)<br>    tags        = optional(map(string))<br>  }))</pre> | <pre>[<br>  {<br>    "description": null,<br>    "key_alias": null,<br>    "name": null,<br>    "tags": null,<br>    "type": null,<br>    "value": null<br>  }<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_parameter_names"></a> [parameter\_names](#output\_parameter\_names) | A list of parameter names extracted from the aws\_ssm\_parameter resources. |
| <a name="output_parameter_values"></a> [parameter\_values](#output\_parameter\_values) | A list of parameter values extracted from the aws\_ssm\_parameter resources. These values are treated as sensitive. |
| <a name="output_parameters"></a> [parameters](#output\_parameters) | A list of parameters extracted from the aws\_ssm\_parameter resources. These values are treated as sensitive. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
