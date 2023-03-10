## Terraform module to store parameters on AWS SSM Parameter Store.
### Usage

```
overwrite = true
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