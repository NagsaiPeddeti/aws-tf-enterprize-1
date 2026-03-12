# environments/dev/providers.tf

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
  profile = "enterprise-prod"
  default_tags {
    tags = {
      Project   = "Enterprise-Foundation"
      ManagedBy = "Terraform"
      Layer     = "Level-0"
    }
  }
}