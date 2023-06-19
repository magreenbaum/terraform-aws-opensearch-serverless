resource "aws_opensearchserverless_access_policy" "this" {
  count = var.create ? 1 : 0

  name        = var.name
  description = var.description
  policy      = var.policy
  type        = var.type
}
