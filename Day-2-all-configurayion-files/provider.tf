terraform {
  # Enforces the version of the Terraform CLI
   required_version = ">= 1.5.0, < 2.0.0"
  #required_version = "<= 1.4.0" supports below 1.4.0 terraform version only  

  # Enforces the versions of cloud providers (e.g., AWS, Azure, Google Cloud)
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}