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
      create = true

      # name must be between 3 and 32 characters
      name        = "${local.name}-search"
      description = "Search serverless collection example"
      type        = "SEARCH"
    }

    timeseries = {
      create = true

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

  security_config = {
    saml = {
      create = true
      name   = "${local.name}-security-config"
      saml_options = {
        metadata        = file("${path.module}/saml_metadata/metadata.xml")
        session_timeout = 720
      }
    }
  }
}
