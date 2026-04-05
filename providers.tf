terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/avs"
      version = "~> 2.3.0"   
    }
  }
}
