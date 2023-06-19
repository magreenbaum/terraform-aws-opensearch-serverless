resource "aws_opensearchserverless_security_config" "this" {
  count = var.create ? 1 : 0

  name        = var.name
  description = var.description
  type        = var.type

  dynamic "saml_options" {
    for_each = length(var.saml_options) > 0 ? [var.saml_options] : []
    content {
      group_attribute = try(saml_options.value.group_attribute, null)
      metadata        = saml_options.value.metadata
      session_timeout = try(saml_options.value.session_timeout, null)
      user_attribute  = try(saml_options.value.user_attribute, null)
    }
  }
}
