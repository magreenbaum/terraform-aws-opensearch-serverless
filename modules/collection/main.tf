resource "aws_opensearchserverless_collection" "this" {
  count = var.create

  name        = var.name
  description = var.description
  tags        = var.tags
  type        = var.type
}
