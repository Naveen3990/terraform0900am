terraform {
  # Enforces the version of the Terraform CLI
  required_version = ">= 1.5.0, < 2.0.0"

  # Enforces the versions of cloud providers (e.g., AWS, Azure, Google Cloud)
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}