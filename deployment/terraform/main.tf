provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name            = "LabAppServer-${var.release_version}"
    ReleaseVersion  = var.release_version
    DeploymentStage = "production"
  }
}
