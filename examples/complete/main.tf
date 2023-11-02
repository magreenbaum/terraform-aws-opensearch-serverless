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
                "index/${local.name}-search/*",
                "index/${local.name}-timeseries/*"
              ],
              Permission : [
                "aoss:CreateIndex",
                "aoss:DeleteIndex",
                "aoss:UpdateIndex",
                "aoss:DescribeIndex",
                "aoss:ReadDocument",
                "aoss:WriteDocument"
              ]
            },
            {
              ResourceType : "collection",
              Resource : [
                "collection/${local.name}-search",
                "collection/${local.name}-timeseries"
              ],
              Permission : [
                "aoss:CreateCollectionItems",
                "aoss:DeleteCollectionItems",
                "aoss:UpdateCollectionItems",
                "aoss:DescribeCollectionItems"
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

  lifecycle_policy = {
    one_year = {
      name = "${local.name}-one-year"
      policy = jsonencode(
        {
          Rules : [
            {
              ResourceType : "index",
              Resource : [
                "index/${local.name}-search/*",
                "index/${local.name}-timeseries/*"
              ],
              MinIndexRetention : "365d"
            }
          ]
        }
      )
    }
  }

  security_policy = {
    encryption = {
      # name must be between 3 and 32 characters
      name = "${local.name}-encryption"
      type = "encryption"
      policy = jsonencode(
        {
          Rules = [
            {
              Resource = [
                "collection/${local.name}-search",
                "collection/${local.name}-timeseries"
              ],
              ResourceType = "collection"
            }
          ],
          AWSOwnedKey = true
        }
      )
    }

    network = {
      name = "${local.name}-network"
      type = "network"
      policy = jsonencode([
        {
          Rules = [
            {
              Resource = [
                "collection/${local.name}-search",
                "collection/${local.name}-timeseries"
              ],
              ResourceType = "collection"
            }
          ]
          AllowFromPublic = true
        }
      ])
    }
  }
}
