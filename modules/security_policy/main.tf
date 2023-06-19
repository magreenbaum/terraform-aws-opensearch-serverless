resource "aws_opensearchserverless_security_policy" "this" {
  count = var.create ? 1 : 0

  name        = var.name
  description = var.description
  policy      = var.policy
  type        = var.type
}
