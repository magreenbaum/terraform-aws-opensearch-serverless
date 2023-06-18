module "collection" {
  source = "./modules/collection"

  for_each = { for k, v in var.collection : k => v if var.create }

  create = try(each.value.create, true)

  name        = each.value.name
  description = try(each.value.description, true)
  tags        = merge(var.tags, try(each.value.tags, {}))
  type        = try(each.value.type, true)
}
