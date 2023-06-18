resource "aws_opensearchserverless_collection" "this" {
  count = var.create ? 1 : 0

  name        = var.name
  description = var.description
  tags        = var.tags
  type        = var.type
}
