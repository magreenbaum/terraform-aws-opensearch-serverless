resource "aws_opensearchserverless_security_config" "this" {
  count = var.create

  name        = var.name
  description = var.description
  type        = var.type

  dynamic "saml_options" {
    for_each = var.saml_options
    content {
      group_attribute = try(saml_options.value.group_attribute, null)
      metadata        = saml_options.value.metadata
      session         = try(saml_options.value.session, null)
      user_attribute  = try(saml_options.value.user_attribute, null)
    }
  }
}
