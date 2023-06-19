provider "aws" {
  region = local.region
}

locals {
  name   = "complete-example"
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

module "search_collection" {
  source = "../../"

  collection = {
    search = {
      # name must be between 3 and 32 characters
      name        = "${local.name}-search"
      description = "Search serverless collection example"
      type        = "SEARCH"
    }

    timeseries = {
      name        = "${local.name}-timeseries"
      description = "Timeseries serverless collection example"
      type        = "TIMESERIES"
    }
  }

  access_policy = {
    crud = {
      name = "${local.name}-access-policy"
      policy = jsonencode([
        {
          Rules : [
            {
              ResourceType : "index",
              Resource : [
                "index/books/*"
              ],
              Permission : [
                "aoss:CreateIndex",
                "aoss:ReadDocument",
                "aoss:UpdateDocument"
              ]
            }
          ]
          Principal : [
            "arn:aws:iam::${data.aws_caller_identity.current.id}:user/admin"
          ]
        }
      ])
    }
  }

  security_policy = {
    encryption = {
      # name must be between 3 and 32 characters
      name = "${local.name}-encryption"
      type = "encryption"
      policy = jsonencode([
        {
          Rules = [
            {
              Resource = [
                "collection/${local.name}-search"
              ],
              ResourceType = "collection"
            }
          ],
          AWSOwnedKey = "true"
        }
      ])
    }

    network = {
      name = "${local.name}-network"
      type = "network"
      policy = jsonencode([
        {
          Rules = [
            {
              Resource = [
                "collection/${local.name}-search"
              ],
              ResourceType = "collection"
            }
          ]
          AllowFromPublic = "true"
        }
      ])
    }
  }
}
