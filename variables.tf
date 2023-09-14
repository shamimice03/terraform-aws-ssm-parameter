variable "parameters" {
  description = "List of Parameters"
  type = list(object({
    create      = bool
    name        = string
    description = optional(string)
    type        = string
    value       = string
    key_alias   = optional(string)
    tags        = optional(map(string))
  }))
  default = [
    {
      create      = true
      name        = null
      description = null
      type        = null
      value       = null
      key_alias   = null
      tags        = null
    }
  ]
}
