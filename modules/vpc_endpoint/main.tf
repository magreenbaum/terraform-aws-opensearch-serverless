resource "aws_opensearchserverless_vpc_endpoint" "this" {
  count = var.create ? 1 : 0

  name               = var.name
  security_group_ids = var.security_group_ids
  subnet_ids         = var.subnet_ids
  vpc_id             = var.vpc_id
}
