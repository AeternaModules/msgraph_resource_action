output "resource_actions_id" {
  description = "Map of id values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_actions_action" {
  description = "Map of action values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.action if v.action != null && length(v.action) > 0 }
}
output "resource_actions_api_version" {
  description = "Map of api_version values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "resource_actions_body" {
  description = "Map of body values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.body if v.body != null }
}
output "resource_actions_headers" {
  description = "Map of headers values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.headers if v.headers != null && length(v.headers) > 0 }
}
output "resource_actions_method" {
  description = "Map of method values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.method if v.method != null && length(v.method) > 0 }
}
output "resource_actions_output" {
  description = "Map of output values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.output if v.output != null }
}
output "resource_actions_query_parameters" {
  description = "Map of query_parameters values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.query_parameters if v.query_parameters != null && length(v.query_parameters) > 0 }
}
output "resource_actions_resource_url" {
  description = "Map of resource_url values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.resource_url if v.resource_url != null && length(v.resource_url) > 0 }
}
output "resource_actions_response_export_values" {
  description = "Map of response_export_values values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.response_export_values if v.response_export_values != null && length(v.response_export_values) > 0 }
}
output "resource_actions_retry" {
  description = "Map of retry values across all resource_actions, keyed the same as var.resource_actions"
  value       = { for k, v in msgraph_resource_action.resource_actions : k => v.retry if v.retry != null && length(v.retry) > 0 }
}

