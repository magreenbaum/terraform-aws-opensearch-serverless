resource "aws_opensearchserverless_collection" "this" {
  count = var.create ? 1 : 0

  name             = var.name
  description      = var.description
  standby_replicas = var.standby_replicas
  tags             = var.tags
  type             = var.type
}
