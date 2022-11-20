terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<= 4.25.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      Deployment = var.deployment_id
    }
  }
}

resource "aws_ecr_repository" "bad_example" {
    name                 = "bar"
    image_tag_mutability = "MUTABLE"

    image_scanning_configuration {
        scan_on_push = false
    }
}

