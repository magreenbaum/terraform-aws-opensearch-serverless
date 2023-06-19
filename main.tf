module "collection" {
  source = "./modules/collection"

  for_each = { for k, v in var.collection : k => v if var.create_collection }

  create = try(each.value.create, true)

  name        = each.value.name
  description = try(each.value.description, true)
  tags        = merge(var.tags, try(each.value.tags, {}))
  type        = try(each.value.type, true)
}

module "access_policy" {
  source = "./modules/access_policy"

  for_each = { for k, v in var.access_policy : k => v if var.create_access_policy }

  create = try(each.value.create, true)

  name        = each.value.name
  description = try(each.value.description, null)
  policy      = each.value.policy
  type        = try(each.value.type, "data")
}

module "security_config" {
  source = "./modules/security_config"

  for_each = { for k, v in var.security_config : k => v if var.create_security_config }

  create = try(each.value.create, true)

  name = each.value.name
  type = try(each.value.type, "saml")

  saml_options = each.value.saml_options
}
