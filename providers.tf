
terraform {
  required_version = "1.3.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Using remote backend

terraform {
  backend "s3" {
    bucket = "my-backend-for-first-project"
    key    = "firstProject/tfstate"
    region = "ap-south-1"
  }
}

