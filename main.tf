module "collection" {
  source = "./modules/collection"

  for_each = { for k, v in var.collection : k => v if var.create_collection }

  create = try(each.value.create, true)

  name             = each.value.name
  description      = try(each.value.description, true)
  standby_replicas = try(each.value.standby_replicas, null)
  tags             = merge(var.tags, try(each.value.tags, {}))
  type             = try(each.value.type, true)

  depends_on = [module.security_policy]
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

module "lifecycle_policy" {
  source = "./modules/lifecycle_policy"

  for_each = { for k, v in var.lifecycle_policy : k => v if var.create_lifecycle_policy }

  create = try(each.value.create, true)

  name        = each.value.name
  description = try(each.value.description, null)
  policy      = each.value.policy
  type        = try(each.value.type, "retention")
}

module "security_config" {
  source = "./modules/security_config"

  for_each = { for k, v in var.security_config : k => v if var.create_security_config }

  create = try(each.value.create, true)

  name        = each.value.name
  description = try(each.value.description, null)
  type        = try(each.value.type, "saml")

  saml_options = each.value.saml_options
}

module "security_policy" {
  source = "./modules/security_policy"

  for_each = { for k, v in var.security_policy : k => v if var.create_security_policy }

  create = try(each.value.create, true)

  name        = each.value.name
  description = try(each.value.description, null)
  policy      = each.value.policy
  type        = each.value.type
}

module "vpc_endpoint" {
  source = "./modules/vpc_endpoint"

  for_each = { for k, v in var.vpc_endpoint : k => v if var.create_vpc_endpoint }

  create = try(each.value.create, true)

  name               = each.value.name
  security_group_ids = try(each.value.security_group_ids, null)
  subnet_ids         = each.value.subnet_ids
  vpc_id             = each.value.vpc_id
}
