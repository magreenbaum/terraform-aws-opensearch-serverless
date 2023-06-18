resource "aws_opensearchserverless_access_policy" "this" {
  count = var.create

  name        = var.name
  description = var.description
  policy      = var.policy
  type        = var.type
}
