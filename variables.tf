variable "resource_actions" {
  description = <<EOT
Map of resource_actions, attributes below
Required:
    - method
    - resource_url
Optional:
    - action
    - api_version
    - body
    - headers
    - query_parameters
    - response_export_values
    - retry
EOT

  type = map(object({
    method                 = string
    resource_url           = string
    action                 = optional(string)
    api_version            = optional(string)
    body                   = optional(any)
    headers                = optional(map(string))
    query_parameters       = optional(map(any))
    response_export_values = optional(map(string))
    retry = optional(object({
      error_message_regex = list(string)
    }))
  }))
}

