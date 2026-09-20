resource "msgraph_resource_action" "resource_actions" {
  for_each = var.resource_actions

  method                 = each.value.method
  resource_url           = each.value.resource_url
  action                 = each.value.action
  api_version            = each.value.api_version
  body                   = each.value.body
  headers                = each.value.headers
  query_parameters       = each.value.query_parameters
  response_export_values = each.value.response_export_values
  retry                  = each.value.retry

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

