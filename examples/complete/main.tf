provider "aws" {
  region = local.region
}

locals {
  name   = "complete-example"
  region = "us-east-1"
}

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
}
