resource "aws_opensearchserverless_security_policy" "this" {
  count = var.create

  name        = var.name
  description = var.description
  policy      = var.policy
  type        = var.type
}
